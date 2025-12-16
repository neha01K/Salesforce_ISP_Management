public class AccountTriggerHandler {

    private static Boolean isAccountupdateRunning = false;

    public static void updateContactsAndCount(List<Account> newAccounts,Map<Id, Account> oldMap) {

        Set<Id> accountIds = new Set<Id>();
        for(Account account : newAccounts) {
            accountIds.add(account.Id);
        }

        List<Contact> contacts = [
            SELECT Id, AccountId, Phone
            FROM Contact
            WHERE AccountId IN :accountIds
        ];

        Map<Id, Account> accountMap = new Map<Id, Account>(newAccounts);

        for (Contact contact : contacts) {
            Account account = accountMap.get(contact.AccountId);
            if (account.Phone != null) {
                contact.Phone = account.Phone;
            }
        }

        if (!contacts.isEmpty()) {
            update contacts;
        }

        Map<Id, Integer> contactCountMap = new Map<Id, Integer>();

        for (Contact contact : contacts) {
            contactCountMap.put(
                contact.AccountId,
                contactCountMap.get(contact.AccountId) == null? 1: contactCountMap.get(contact.AccountId)+1);
        }

        List<Account> accountsToUpdate = new List<Account>();
        for (Id accountId : accountIds) {
            Account account = new Account(
                Id = accountId,
                Number_of_Contacts__c = contactCountMap.containsKey(accountId)? contactCountMap.get(accountId):0);
            accountsToUpdate.add(account);
        }

        if(!isAccountupdateRunning){
            isAccountupdateRunning=true;
            update accountsToUpdate;
        }

    }


    public static void preventDeleteIfContactsExist(List<Account> accounts) {

        Set<Id> accountIds = new Set<Id>();
        for (Account account : accounts) {
            accountIds.add(account.Id);
        }

        AggregateResult[] results = [
            SELECT AccountId accId, COUNT(Id) cnt
            FROM Contact
            WHERE AccountId IN :accountIds
            GROUP BY AccountId
        ];

        Map<Id, Integer> contactCountMap = new Map<Id, Integer>();
        for (AggregateResult aggResult : results) {
            contactCountMap.put(
                (Id) aggResult.get('accId'),
                (Integer) aggResult.get('cnt')
            );
        }

        for (Account account : accounts) {
            if (contactCountMap.containsKey(account.Id)) {
                account.addError('Cannot delete Account because it has related Contacts');
            }
        }
    }
}
