public class DataTypeDemo {
    Boolean b;
    public void methodName(){
        System.debug('Okay! We are in method');
        b = true;
        System.debug('b = '+ b);
        Account account = new Account();
        account.Name = 'Neha Khandelwal';
        account.Phone = '9988776655';
        System.debug('Account Details: '+ 
                     'Name '+ account.Name+'\n'+
                     ' Phone '+ account.Phone);
        
        sobject obj = new Account(Name = 'Badrinath');
        Account secondAccount = (Account)obj;
        System.debug('Account Detail: ' + secondAccount);
        
        List<Account> accountList = [Select Id, Name From Account Limit 1];
        System.debug(accountList);
        
        Map<String, String> demoMap = new Map<String, String>();
        demoMap.put('1', 'Neha');
        demoMap.put('2', 'Rakesh');
        System.debug(demoMap);
        
        List<Account> accountList2 = [Select Id, Name from Account limit 2];
        Map<ID, Account> demoMap2 = new Map<ID, Account>(accountList2);
        System.debug(demoMap2);
     }
}