public  class TriggerAccountHandler {
    public static void updateVPCheckL(
            List<account> accTriggerNew,
            List<account> accTriggerOld,
            Map<id, account> accTriggerNewMap,
            Map<id, account> accTriggerOldmap) {
           



              //  SELECT Id, name, VP__c FROM Account where id in(SELECT AccountId, Id, Name FROM Contact)

            
            }
            public static void validateAccDelete(list<account> accTriggerOld) {
                //addError is allowed in trigger.new -> true for insert And Update.
                //for delete addError is allowed in trigger.old ONLY
        
                for (account oldAcc : accTriggerOld) {
                    if (oldAcc.active__c  == 'Yes') {
                        oldAcc.addError('Cannot delete active account.');
                    }
                }
           }
           //method to send email to user for undelete
           //method to send email to user
   public static void sendAccEmail(List<account> accTriggerNew) {
    //write code to send email
    List<messaging.SingleEmailMessage> listEmailMsg = new list<messaging.SingleEmailMessage>();

    for (account newAcc : accTriggerNew) {
        //email adresses where we want to send email.
        List<string> emailAddresses = new list<string>();
        emailAddresses.add(userinfo.getUserEmail());

        //email message
        Messaging.SingleEmailMessage msg = new messaging.SingleEmailMessage();
        //to address
        msg.setToAddresses(emailAddresses);
        //subject
        msg.setSubject('Account restored successfully: ' + newAcc.name);
        //body
        msg.setPlainTextBody('Hello Hello, account is successfully UNDELETED. Enjoy');

        listEmailMsg.add(msg);
    }
    //send email
    Messaging.sendEmail(listEmailMsg);
}
}
