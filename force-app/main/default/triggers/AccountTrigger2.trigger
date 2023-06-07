trigger AccountTrigger2 on Account (After undelete) {

  if(trigger.isAfter&&trigger.isUndelete){
        
  }
  if(trigger.isAfter&&trigger.isUpdate){
    TriggerAccountHandler.sendAccEmail(trigger.new);
  }
   /**
    * if(trigger.isBefore){
    system.debug('doing something');
   }
   if(trigger.isAfter){
    system.debug('doing something after update');
   }
    */
    // if(trigger.isBefore){
    //   system.debug('deleting this is before with triger old' + trigger.old);
    //   system.debug('deleting this is before' + trigger.new);
    //  }
    //  if(trigger.isAfter){
    //   system.debug('affter deleting ' +trigger.new);
    //  }

}