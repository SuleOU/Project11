public class TriggerHandlerSalesForceProject {
    public static void insertTicket(List<Salesforce_Project__c> spTriggerNew){
        List<Salesforce_Ticket__c> ticketL=new List<Salesforce_Ticket__c>();
        for(Salesforce_Project__c s:spTriggerNew){
            Salesforce_Ticket__c ticket=new  Salesforce_Ticket__c();
            ticket.subject__c='Default ST';
            ticket.Salesforce_Project__c=s.id;
            ticketL.add(ticket);
        }
       
        insert ticketL;
    }
    public static void validate1(list<salesforce_project__c> spTriggerNew, list<salesforce_project__c> spTriggerOld, Map<id, salesforce_project__c> spTriggerNewMap,Map<id, salesforce_project__c> spTriggerOldMap) {
        set<id> spId=new set<id>();
        for(salesforce_project__c s: spTriggerNew){
            if(s.status__c!=spTriggerOldMap.get(s.id).status__c&&s.status__c=='Completed'){
                    spId.add(s.id);
            }
        }
        //get all the ticket of spid where status is not completed

        List<Salesforce_Ticket__c> ticketL=[SELECT Id, Name, Salesforce_Project__c, Status__c FROM Salesforce_Ticket__c where Salesforce_Project__c in : spId and Status__c!='Completed' ];
        //for each loop ticket 
        // get the project from new map
        // add error

        for(Salesforce_Ticket__c k:ticketL){
            salesforce_project__c  sp=spTriggerOldMap.get(k.Salesforce_Project__c);
              sp.addError('Cannot Complete project beacuse all ticket should be completed');
        }
    }
    
    @future// future method only except primative
    public static void updateDecFutue(Set<id> spId) {
        // we want to upadate thdesriotion for all the ids
        //fatch the all record
        List<Salesforce_Project__c> saleList=[select id, description__c from Salesforce_Project__c where id in :spId];
        for(Salesforce_Project__c s: saleList){
            s.description__c='upadate from future';
        }
        update saleList;
    }
   
    //tesk if we changed the salese project status to complted ,all the ticket should be completed
    public static void spCompleted(list<salesforce_project__c> spTriggerNew, list<salesforce_project__c> spTriggerOld, Map<id, salesforce_project__c> spTriggerNewMap,Map<id, salesforce_project__c> spTriggerOldMap){
        set<id> spIds = new set<id>();

        for (Salesforce_Project__c eachSP : spTriggerNew) {
            if (eachSP.Status__c != spTriggerOldMap.get(eachSP.id).Status__c
            && eachSP.Status__c == 'Completed') {
                spIds.add(eachSP.Id);
            }
        }
        if(!spIds.isEmpty()){
            //call the fture method
            updateDescFuture(spIds);
        }
    }
    @future
    public static void updateDescFuture(Set<id> spIds) {
        List<Salesforce_Ticket__c> ticketL=[SELECT Id, Name, Salesforce_Project__c, Status__c FROM Salesforce_Ticket__c where Salesforce_Project__c in : spIds and Status__c!='Completed' ];

        for(Salesforce_Ticket__c s:ticketL){
           s.Status__c ='Completed';
        }
        update ticketL;
    }
}
