public class ApexScenario5 {
	
    public static void updatePhone(){
        
        List<Contact> contactList = [SELECT Id, FirstName, Phone, Account.Phone FROM Contact WHERE AccountId!=NULL];
        
        if(!contactList.isEmpty()){
            for(Contact contact : contactList){
                if(contact.Phone==Null){
                    contact.Phone = contact.Account.Phone;
                }
            }                
        }
        
        if(!contactList.isEmpty()){
            update contactList;
        }
    }
}