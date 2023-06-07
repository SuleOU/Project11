trigger SalesforceProjectTriiger on Salesforce_Project__c (before insert, after insert, before update, after update) {
  if(trigger.isAfter&&trigger.isInsert){
    //trigger.new, trigger.old, trigger.newmap, trigger.oldMap
    //List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<id,Salesforce_Project__c> spTriggerNewmap, map<id,Salesforce_Project__c> spTriggerOldMap
  //TriggerHandlerSalesForceProject.insertTicket(trigger.new);
 // TriggerHandlerSalesForceProject.updateDecFutue(trigger.newMap.keyset());
  }
  if(trigger.isBefore&&trigger.isUpdate){
    // TriggerHandlerSalesForceProject.validate1(trigger.new,trigger.old, trigger.newMap, trigger.oldMap);
  }
  if(trigger.isAfter&&trigger.isUpdate){
    TriggerHandlerSalesForceProject.spCompleted(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
  }
}