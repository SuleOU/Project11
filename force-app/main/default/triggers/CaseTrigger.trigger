trigger CaseTrigger on Case (before insert) {
    system.debug('before insert trigger case');
    //system.debug(o)
    TriggerCaseHandler.CountRecord+=trigger.size;
    //TriggerCaseHandler.insertcase(205);
    system.debug('total number of record process'+TriggerCaseHandler.CountRecord );
    TriggerCaseHandler.countTrigger++;
    system.debug(TriggerCaseHandler.countTrigger+'This is coming from executing transection variable');


}