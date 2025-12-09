public class ApexScenario4 {
    public static void countContacts(){
        
        List<Account> accList = 
            [SELECT Id, Name, (SELECT Id, FirstName, LastName FROM Contacts) 
            FROM Account 
            WHERE CreatedDate=LAST_MONTH];
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                acc.Total_Contacts__c = acc.Contacts.size();
            }
        }
        
        if(!accList.isEmpty())
            update accList;
    }
}