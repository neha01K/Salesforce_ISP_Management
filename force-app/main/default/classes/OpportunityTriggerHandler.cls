public with sharing class OpportunityTriggerHandler {
    public static void handleAfterUpdate(List<Opportunity> newList, Map<Id, Opportunity> oldMap){
             
        List<Opportunity> closedWonOpportunities = new List<Opportunity>();
        for(Opportunity opportunity: newList){
            Opportunity oldOpportunity = oldMap.get(opportunity.Id);
            if(oldOpportunity == null) continue;
            
            if(oldOpportunity.StageName != 'Closed Won' && opportunity.StageName == 'Closed Won'){
               
                    closedWonOpportunities.add(opportunity);
            }
        }
        
        if(!closedWonOpportunities.isEmpty()){
            OpportunityService.createFollowUpTask(closedWonOpportunities);
        }
  
    }
}