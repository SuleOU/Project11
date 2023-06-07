trigger EmployeeTrigger on Employee__c (before insert,after insert,before update ,after update) {
   if(trigger.isBefore){
    //call handleler here
    EmployeeHandlerTrigger.updateJoinddate(trigger.new);
    TriggerEmployeeHnadler.futureJoinDate(trigger.new);
    if(trigger.isInsert){
      //TriggerEmployeeHnadler.DepartmentCheck(trigger.new);
    }
    if(trigger.isUpdate){
      //TriggerEmployeeHnadler.DepartmentCheck(trigger.new);
    }
   }
   if(trigger.isAfter){
    if(trigger.isInsert){
      TriggerEmployeeHnadler.countEmp(trigger.new);
    }
    if(trigger.isUpdate){
      TriggerEmployeeHnadler.deleteInacrive(trigger.new);
    }
   }
}