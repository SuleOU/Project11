public with sharing class TriggerCaseHandler {
    public static Integer CountRecord=0;
    public static Integer countTrigger=0;
   public static void insertcase(Integer n){
    List<Case> caseL=new List<Case>();
    for(integer i=0;i<=n;i++){
       // case cc=new case(name='New Case'+i,status='New');
        // cc.name='new case'+1;
        // cc.status='New';
         caseL.add(new case(subject='New Case'+i,status='New'));
       

    }
    insert caseL;
   // System.debug('number of trigger'+trigger.size);
  
   }

}