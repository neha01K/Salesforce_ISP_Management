public with sharing class OpportunityService {
    
    public static void createFollowUpTask(List<Opportunity> closedWonOpp){
        
        Set<Id> accountIds = new Set<Id>();
        
        for(Opportunity opportunity : closedWonOpp){
            if(opportunity.AccountId != null){
                accountIds.add(opportunity.AccountId);
            }
        }
        
        Map<Id, Account> accountMap = new Map<Id, Account>();
        for(Id accountId : accountIds){
            accountMap = new Map<Id, Account>([SELECT Id, OwnerId FROM Account WHERE Id IN : accountIds]);
        }
        
		List<Task> taskList = new List<Task>();
		Date dueDate = Date.today().addDays(7);

        for(Opportunity opportunity: closedWonOpp){
            
            Id taskOwnerId = null;
            
            if(opportunity.AccountId != null && accountMap.containsKey(opportunity.AccountId)){
                taskOwnerId = accountMap.get(opportunity.AccountId).OwnerId;
            }
            
            if(taskOwnerId == null){
                taskOwnerId = UserInfo.getUserId();
            }
            
            Task task = new Task(
            	WhatId = opportunity.Id,
            	Subject = 'Welcome call for new customer - '+ opportunity.Name,
                ActivityDate = dueDate,
                OwnerId = taskOwnerId,
                Status = 'Not Started',
                Priority = 'Normal'
            );
            
            taskList.add(task);
        }        
        
        if(!taskList.isEmpty()){
            insert taskList;
        }
                
    }	
}