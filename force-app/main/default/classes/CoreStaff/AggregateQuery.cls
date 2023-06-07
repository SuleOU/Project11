public class AggregateQuery {
    public static void aggQuery(){
        List<AggregateResult> myList=[select country__c, count(id), 
        sum(salary__c), max(salary__c), min(salary__c) from employee__c group by country__c ];
         For(AggregateResult s:myList){
        system.debug(s);
        system.debug(myList);
            System.debug(s.get('country__c'));// we use only get () method inside of appostraphy for agregated function
            system.debug('number of record'+ s.get('expr0'));
            system.debug('number of salary'+ s.get('expr1'));
         }
    }
     public static void accDynamicSoql(String fieldName){
        String myQuery='select '+ fieldName+' from account';//do not forget to put space

        List<Account> aaList=Database.query(myQuery);
        for(account aa:aaList){
            system.debug(aa);
        }
     }
     public static void empDynamicSOQL(string empFields) {
        string q = 'select ';
        q += empFields;
        q += ' from employee__c';
        
        system.debug('final query is ==> ' + q);

        list<employee__c> listEmp = database.query(q);
        for (employee__c eachEmp : listEmp) {
            system.debug(' employee ' + eachEmp);
        }
    }
}