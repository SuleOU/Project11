trigger ContactTrigger on Contact (before insert, after insert,before update, after update) {

    // if(trigger.isBefore&&trigger.isUpdate){
    //     TriggerContactHandler.validate2(trigger.new,trigger.old,trigger.newMap, trigger.oldMap);
    // }
      if(trigger.isAfter){
        if(trigger.isInsert || trigger.isUndelete){
            TriggerContactHandler.InsertContact(trigger.new);
        }
      }

    // if(trigger.isBefore){
    //     System.debug('contac before trigger');
    //     if(trigger.isInsert){
    //         System.debug('contac before the insert trigger');
    //     }
    //     if(trigger.isUpdate){
    //         system.debug('contac before udtade trigger');
    //     }
    // }
    // if(trigger.isAfter){
    //     system.debug('Contact After trigger');
    //     if(trigger.isInsert){
    //         System.debug('contacc after the insert trigger');
    //     }
    //     if(trigger.isUpdate){
    //         system.debug('contacc after udtade trigger');
    //     }
    // }
}