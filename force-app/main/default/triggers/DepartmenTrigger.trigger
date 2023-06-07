trigger DepartmenTrigger on Department__c (before insert,After insert ) {

    if(trigger.isAfter){
        if(trigger.isInsert){
        // DepartmentHandler.createDefaultEmpFuture(trigger.newMap.keyset());
        }
    }
}