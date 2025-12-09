public class ApexScenario6 {
	
    public static void calculateTotalSalary(){
        
        List<Account> accList = [SELECT Id, Name, Total_Salary__c, (SELECT Name, Salary__c FROM Employees__r) 
                                 FROM Account 
                                 WHERE CreatedDate = THIS_YEAR];
        
        if(!accList.isEmpty()){
            for(Account account : accList){
                decimal totalSalary = 0;
                for(Employee__c employee : account.Employees__r){
                   totalSalary  = totalSalary + employee.Salary__c;
                }
                account.Total_Salary__c = totalSalary;
            }
            update accList;
        }           
    }
}