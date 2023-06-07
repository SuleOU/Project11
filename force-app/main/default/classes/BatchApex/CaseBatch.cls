public class CaseBatch implements Database.batchable<sobject>{
    
    ////find all cases, and if the case is orphan (no related account), then set default account to Softinnovas.
        public Database.QueryLocator start(Database.BatchableContext bc) {
            system.debug('using start method');
            return Database.getQueryLocator([select id, accountid from case  where  accountid=null]);
        }
    
        public void execute(Database.BatchableContext bc, List<case> somecase) {
            id acccid=[select id from account where name='Softinnovas' limit 1].Id;// we converted to id
         list <case> updateCase=new list <case>();
            for(case s:somecase){
                s.AccountId=acccid;
                updateCase.add(s);
            }
            update updateCase;
            system.debug('updated case '+updateCase.size());
        }
    
        public void finish(Database.BatchableContext bc) {
            system.debug('No more orphan case');
        }
    
    }
