trigger ContactTrigger on Contact (before insert, before update) {
    
    if(Trigger.isBefore){
        
        if(Trigger.isInsert){
            ContactTriggerHandler.handleBeforeInsert(Trigger.new);
        }
        if(Trigger.isUpdate){
            ContactTriggerHandler.handleBeforeUpdate(Trigger.new, Trigger.oldMap);
        }
    }
    

}