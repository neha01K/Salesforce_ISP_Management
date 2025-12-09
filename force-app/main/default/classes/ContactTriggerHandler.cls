public with sharing class ContactTriggerHandler {
	
    public static void handleBeforeInsert(List<Contact> contactList){
        for(Contact contact : contactList){
            if(String.isBlank(contact.Email))
                contact.Email = 'noemail@company.com';
        }
    }
    
    public static void handleBeforeUpdate(List<Contact> newList, Map<Id, Contact> oldMap){
        for(Contact contact : newList){
            Contact oldContact = oldMap.get(contact.Id);
            
            if(String.isBlank(contact.Phone) && !String.isBlank(oldContact.Phone)){
                contact.Phone = '000-000-0000';
            }
        }
    }
}