public with sharing class AgentDataService {

    @AuraEnabled(cacheable=true)
    public static List<UserDTO> getAgents() {
        List<User> users = [
            SELECT Id, Name
            FROM User
            WHERE IsActive = true
            ORDER BY Name
            LIMIT 200
        ];
        List<UserDTO> out = new List<UserDTO>();
        for(User user : users) {
            out.add(new UserDTO(user.Id, user.Name));
        }
        return out;
    }

    @AuraEnabled(cacheable=true)
    public static List<CustomerDTO> getCustomersByAgent(Id agentId) {
        if(agentId == null) return new List<CustomerDTO>();

        List<Account> accounts = [
            SELECT Id, Name, Phone, AccountNumber
            FROM Account
            WHERE OwnerId = :agentId
            ORDER BY Name
        ];

        List<CustomerDTO> out = new List<CustomerDTO>();
        for(Account account : accounts) {
            out.add(new CustomerDTO(
                account.Id,
                account.Name,
                account.Phone,
                account.AccountNumber
            ));
        }
        return out;
    }

    @AuraEnabled(cacheable=true)
    public static List<PlanDTO> getActivePlansByCustomer(Id customerId) {
        if(customerId == null) return new List<PlanDTO>();

        List<Plan__c> plans = [
            SELECT Id, Name, StartDate__c, EndDate__c, IsActive__c
            FROM Plan__c
            WHERE Customer__c = :customerId
              AND IsActive__c = true
            ORDER BY StartDate__c DESC
        ];

        List<PlanDTO> out = new List<PlanDTO>();
        for(Plan__c plan : plans) {
            out.add(new PlanDTO(
                plan.Id,
                plan.Name,
                plan.StartDate__c,
                plan.EndDate__c,
                plan.IsActive__c
            ));
        }
        return out;
    }

    public class UserDTO {
        @AuraEnabled public Id id;
        @AuraEnabled public String name;
        public UserDTO(Id i, String n) { id = i; name = n; }
    }

    public class CustomerDTO {
        @AuraEnabled public Id id;
        @AuraEnabled public String name;
        @AuraEnabled public String phone;
        @AuraEnabled public String accountNumber;

        public CustomerDTO(Id i, String n, String p, String a) {
            id=i; name=n; phone=p; accountNumber=a;
        }
    }

    public class PlanDTO {
        @AuraEnabled public Id id;
        @AuraEnabled public String name;
        @AuraEnabled public Date startDate;
        @AuraEnabled public Date endDate;
        @AuraEnabled public Boolean isActive;

        public PlanDTO(Id i, String n, Date s, Date e, Boolean a) {
            id=i; name=n; startDate=s; endDate=e; isActive=a;
        }
    }
}