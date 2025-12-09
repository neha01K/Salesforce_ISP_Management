public class ApexScenario2 {
    
    public static void updatePhoneNumber(){
        List<Account> accountList = [SELECT Id, Name FROM Account WHERE CreatedDate = LAST_WEEK];
        List<Account> updatedAccountPhoneList = new List<Account>();
        
        if(!accountList.isEmpty()){
            for(Account account : accountList){
                account.Phone = '1234567890';
                updatedAccountPhoneList.add(account);
            }
        }
        
        if(!updatedAccountPhoneList.isEmpty()){
            update updatedAccountPhoneList;
        }
    }

}