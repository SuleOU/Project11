public class TriggerEmployeeHnadler {
    public static void futureJoinDate(List<Employee__c> empTriggerNew){
        for(Employee__c s:empTriggerNew){
            if(s.joinDate__c>date.today()){
               s.joinDate__c.addError('Join date can not be future');
            }
        }
    }
    
    public static void countEmp(List<Employee__c> empTriggerNew){
      set<id> empId=new  set<id>();
      for(Employee__c s:empTriggerNew){
         if(s.Department__c!=null)
         empId.add(s.Department__c);
         
      }
      List<Department__c> depList=[SELECT Id, Name, Name__c, Employee_Count__c ,(SELECT id FROM Employees__r) FROM Department__c where id in:empId];
        for(Department__c c:depList){
           
                c.Employee_Count__c= c.Employees__r.size();
              
        }
        update depList;
    }
    public static void deleteInacrive(List<Employee__c> empTriggerNew){
        set<id> inAcc=new  set<id> ();
          for(Employee__c s:empTriggerNew){
            if(s.isActive__c==false){
                inAcc.add(s.id);
            }
          }
       List<Employee__c > deleteL=[select id from Employee__c where id in :inAcc];
       if(deleteL.size()>0){
        delete deleteL;
       }
    }
    
}
