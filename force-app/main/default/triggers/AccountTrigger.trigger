trigger AccountTrigger on Account (after insert, after update, before delete) {

  if(Trigger.isAfter){
    if(Trigger.isInsert || Trigger.isUpdate){
      AccountTriggerHandler.updateContactsAndCount(Trigger.new, Trigger.oldMap);
    }
  }

  if(Trigger.isBefore && Trigger.isDelete){
    AccountTriggerHandler.preventDeleteIfContactsExist(Trigger.old);
  }
}