public with sharing class AccountController {
    @AuraEnabled(cacheable=true)
    public static List<Account> getAccounts(){
        return [
            SELECT Id, Name, Industry
            FROM Account
            LIMIT 10
        ];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountByType(String typeValue){
        return [
            SELECT Id, Name, Type
            FROM Account
            WHERE Type = :typeValue
            LIMIT 10
        ];
    }
}