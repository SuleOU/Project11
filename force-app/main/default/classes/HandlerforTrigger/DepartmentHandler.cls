public class DepartmentHandler {
    @future
    public static void createDefaultEmpFuture(Set<id> setid){
        List<Employee__c> emp=new List<Employee__c>();
        for(id s:setid){
            Employee__c  e=new Employee__c(first_name__c='sss',Department__c=s);
            emp.add(e);
        }
insert emp;
    }
}