    trigger AccountTrigger on Account (before insert, after insert, before update, after update,before delete,after delete) {
      if(trigger.isBefore){
        //inser for update for the method in below
       // AccountTriggerHandler.updateAccDescription(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
       if (trigger.isInsert||trigger.isUpdate){
        AccountTriggerHandler.updateAccDescription(trigger.new, trigger.old, trigger.newMap,trigger.oldMap);
       }
       if (trigger.isDelete){
        TriggerAccountHandler.validateAccDelete(trigger.old);
       }
      }
      if (Trigger.isAfter &&  Trigger.isInsert) {
        //new instance of queueable class
        
       
        AccountQuableExaple aq = new AccountQuableExaple();
        aq.listAcc = Trigger.new;// trigger.new is read only in after trigger that is why we created another list in handler calss and  and new objetc then we upadted
        //enqueuing job
        id jobId = system.enqueueJob(aq);
    
    }
       if(trigger.isAfter&&trigger.isUpdate){
        
     }
     
    /*
    system.debug('isBefore --> ' + trigger.isBefore);
        system.debug('isAfter --> ' + trigger.isAfter);
        //isBefore will be true when trigger is running in BEFORE save context
        if(trigger.isBefore){
            //only run when trigger is IN BEFORE.
            system.debug('before insert account trigger called');
        }

        //isAFTER will be true when trigger is running in AFTER save context
        if(Trigger.isAfter){
            system.debug('after insert account trigger called');
        }
        // this is true before insert and update event
        if(trigger.isBefore){
          system.debug('doing something');
        }
        //this is true after insert and after update
        if(trigger.isAfter){
          system.debug('doing something after update');
        }
        system.debug('----');
    */

       /*
        if(trigger.isBefore&&trigger.isInsert){
        system.debug('before insert account trigger');
    }
      if(trigger.isAfter&&Trigger.isInsert){
        System.debug('after insert ');
      }
      if(trigger.isBefore&&trigger.isUpdate){
        system.debug('before update account trigger');
    }
      if(trigger.isAfter&&Trigger.isUpdate){
        System.debug('after  update');
      }
      system.debug('----');
        */
     // trigger.new is LIST<sObject>

  //   list<account> newAccounts = trigger.new;
  //   if (Trigger.isBefore && Trigger.isInsert) {
  //       system.debug('before insert trigger.new : ' + trigger.new);
  //       system.debug('before insert number of records : ' + trigger.new.size());

  //       for(account s: trigger.new){
  //         System.debug('before insert ===new account id '+s.id);
  //         System.debug('before insert ===new account name '+s.name);
  //       }
  //   }
  //   if(Trigger.isAfter && Trigger.isInsert){
  //       system.debug('after insert trigger.new : ' + newAccounts);
  //       system.debug('after insert number of records : ' + newAccounts.size());

  //       for(account s: trigger.new){
  //         System.debug('after insert ===new account id '+s.id);
  //         System.debug('after  insert ===new account name '+s.name);
  //       }
  //   }
  //   if (Trigger.isBefore && Trigger.isUpdate) {
  //     system.debug('before update trigger.new : ' + trigger.new);
  //     system.debug('before update number of records : ' + trigger.new.size());
  //     for(account s: trigger.new){
  //       System.debug('before  update ===new account id '+s.id);
  //       System.debug('before  update ===new account name '+s.name);
  //     }
  // }
  // if(Trigger.isAfter && Trigger.isUpdate){
  //     system.debug('after update trigger.new : ' + newAccounts);
  //     system.debug('after update number of records : ' + newAccounts.size());
  //     for(account s: trigger.new){
  //       System.debug('after upadte ===new account id '+s.id);
  //       System.debug('after  ubdate ===new account name '+s.name);
  //     }
  // }

    // //we are learning trigger context variables.

    // //Before Insert event
    // if(Trigger.isBefore && Trigger.isInsert){
    //     system.debug('before insert account trigger called');
    // }
    // //After insert event
    // if(Trigger.isAfter && Trigger.isInsert){
    //     system.debug('after insert account trigger called');
    // }
    
    // //Before Update event
    // if(Trigger.isBefore && Trigger.isUpdate){
    //     system.debug('before update account trigger called');
    // }
    // //After update event
    // if(Trigger.isAfter && Trigger.isUpdate){
    //     system.debug('after update account trigger called');
    // }

    system.debug('---');

   
    // system.debug('isBefore --> ' + trigger.isBefore);
    // system.debug('isAfter --> ' + trigger.isAfter);
    // //isBefore will be true when trigger is running in BEFORE save context
    // //this is true in before insert and before update event
    // if(trigger.isBefore){
    //     //only run when trigger is IN BEFORE.
    //     system.debug('before insert account trigger called');
    // }

    // //isAFTER will be true when trigger is running in AFTER save context.
    // //this is true in after insert and after update event
    // if(Trigger.isAfter){
    //     system.debug('after insert account trigger called');
    // }

    // //this is true in before insert and before update event
    // if(trigger.isBefore){
    //     system.debug('before update account trigger');
    // }
    // //this is true in after insert and after update event
    // if(trigger.isAfter){
    //     system.debug('after update account trigger');
    // }

    // system.debug('----');
  //   if(Trigger.isBefore && Trigger.isInsert){
  //     system.debug('before insert trigger.old: ' + trigger.old);
  //     system.debug('before insert trigger.new: ' + trigger.new);
  // }
  // if(Trigger.isAfter && Trigger.isInsert){
  //     system.debug('after insert trigger.old: ' + trigger.old);
  //     system.debug('after insert trigger.new: ' + trigger.new);
  // }

  // if(Trigger.isBefore && Trigger.isUpdate){
  //     system.debug('before update trigger.old: ' + trigger.old);
  //     system.debug('before update trigger.new: ' + trigger.new);
  // }
  // if(Trigger.isAfter && Trigger.isUpdate){
  //     system.debug('after update trigger.old: ' + trigger.old);
  //     system.debug('after update trigger.new: ' + trigger.new);
  // }  
  // if (trigger.isBefore){
  //   for(account s:trigger.new){
  //     if(trigger.isInsert&&s.active__c=='Yes'){
  //       s.Description='account is active';
  //     }
  //     if(trigger.isUpdate){
  //       if(s.active__c!=trigger.oldMap.get(s.id).active__c&&s.active__c=='Yes'){
  //         s.Description='account is active';
  //       }
  //     }
  //   }
  // }
     //--------------------------000
  //    if (Trigger.isBefore) {
  //     for (Account newAcc : Trigger.new) {
  //         //boolean flag to maintain if we want to update description field
  //         boolean updateDesc = false;
  //         //check insert
  //         if (Trigger.isInsert && newAcc.active__c == 'Yes') {
  //             //update description field
  //             //set new field value
  //             //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
  //             updateDesc = true;
  //         }

  //         //check if update
  //         if(Trigger.isUpdate){
  //             //if active field is changed, and active field new value is 'yes'
  //                 //old acc active field != new acc active field AND new acc active field == yes
  //             if(newAcc.Active__c != Trigger.oldMap.get(newAcc.id).Active__c
  //             && newAcc.Active__c == 'Yes'){
  //                 //newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
  //                 updateDesc = true;
  //             }
  //         }

  //         if(updateDesc){
  //             newAcc.Description = 'Account is now active. Enjoy Enjoy buddy!';
  //         }

  //     }
  // }

    }