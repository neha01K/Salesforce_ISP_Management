public class ApexScenario1 {
    
    public static void createdOppForAccount(){
        //List<Account> accountList = [SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR];
        List<Opportunity> oppToBeCreated = new List<Opportunity>();
        
        //if(!accountList.isEmpty()){
            for(Account account : [SELECT Id, Name FROM Account WHERE CreatedDate = THIS_YEAR]){
                Opportunity opportunity = new Opportunity();
                opportunity.Name = account.Name;
                opportunity.CloseDate = System.today();
                opportunity.StageName = 'Prospecting';
                opportunity.AccountId = account.Id;
                oppToBeCreated.add(opportunity);
            }
        //}
        
        if(!oppToBeCreated.isEmpty()){
            insert oppToBeCreated;
        }
    }
}