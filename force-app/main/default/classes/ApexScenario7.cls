public class ApexScenario7 {
	
    public static void updatePhoneOnEmployee(){
        List<Employee__c> empList = [SELECT Id, Name, Phone__c, Account__r.Phone 
                                     FROM Employee__c 
                                     WHERE CreatedDate = THIS_YEAR];
        
        if(!empList.isempty()){
            for(Employee__c emp : empList){
                if(emp.Phone__c==NULL){
                    emp.Phone__c = emp.Account__r.Phone;
                }
            }
            update empList;
        }
    }
}