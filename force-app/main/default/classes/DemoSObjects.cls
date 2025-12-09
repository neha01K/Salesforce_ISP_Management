public class DemoSObjects {
    public void demoMethod(){
        List<Account> accList = new List<Account>();
        Set<Id> accIds = new Set<Id>();
        accList = [Select Id, Name From Account Limit 2];
        
        if(!AccList.isEmpty()){
            for(Account account : accList){
            	accIds.add(account.Id);
        	} 
        }      
        System.debug('Set Ids =>' + accIds);        
    }
}