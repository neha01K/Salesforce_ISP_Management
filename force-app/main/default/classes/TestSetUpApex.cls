@isTest
public class TestSetUpApex {
	
    @testSetUp
    private static void setUp(){
        
        List<Account> accountList = new List<Account>();
        for(Integer i=0; i<2; i++){
            Account account = new Account();
            account.Name = 'Test'+i;
            accountList.add(account);
        }
        insert accountList;
    }
    
    @isTest
    private static void method1(){
        Account account1 = [SELECT Id, Name, Phone FROM Account WHERE Name='Test0'];
        account1.Phone ='1233214441';
        update account1;    
        
        Account account2 = [SELECT Id, Name, Phone From Account Where Name='Test1'];
        delete account2;
    }
    
    @isTest
    private static void method2(){
        Account acc = [SELECT Id, Name, Phone From Account Where Name='Test0'];
        System.assertEquals(null, acc.Phone);
    }
    
    
}