public class ApexScenario3 {
    
    public static void updateOppDescription(){
        
        List<Opportunity> oppList = [SELECT Id, Name, StageName FROM Opportunity WHERE CreatedDate=LAST_WEEK];
        List<Opportunity> updatedDescriptionOppList = new List<Opportunity>();
        
        if(!oppList.isEmpty()){
            for(Opportunity opp : oppList){
                
                if(opp.StageName =='Closed Won'){
                    opp.Description = 'Opportunity is Closed Won';
                    updatedDescriptionOppList.add(opp);
                }
                if(opp.StageName =='Closed Lost'){
                    opp.Description = 'Opportunity is Closed Lost';
                    updatedDescriptionOppList.add(opp);
                }
            }
        }
        
        if(!updatedDescriptionOppList.isEmpty()){
            update updatedDescriptionOppList;
        }
        
    }

}