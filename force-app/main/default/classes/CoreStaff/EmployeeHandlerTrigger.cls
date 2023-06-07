public class EmployeeHandlerTrigger {
    public static void updateJoinddate(List<Employee__c> emp){
        for(Employee__c s: emp){
            if(s.joinDate__c==null){
                s.joinDate__c=Date.today();
            }
        }
    }
}