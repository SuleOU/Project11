public  class SOQLdemo4 {
    public static void childToParent(String industry){
        List<Contact>myList=[select id, name, account.name, account.industry from contact where account.industry =:industry];
        for(contact s:myList){
            system.debug('contac name '+ s.name);
            system.debug('ac  name '+ s.account.name+ 'acc industry '+s.account.industry);
          system.debug('-------00--------00--------');
        }
    }
    //Department name
    //Employee firstname, lastname, country, salary
    //Department wise total salary.
    public static void parentToChild(){
        Decimal salary=0;
        List<department__c> myList=[select id, name, name__c, (select first_name__c, country__c, salary__c from Employees__r where  salary__c!=null ) from department__c 
        ];
        for(Department__c s:myList){
            system.debug('dept name  '+s.name__c);
            //List<Employees__c >myEmp=s.Employees__r;
            for(Employee__c k: s.Employees__r){
                system.debug('employee name '+k.first_name__c);
                system.debug('employee Last name '+k.first_name__c);
                system.debug('employee salary'+ k.salary__c);
                salary=salary+k.salary__c;
                
            }
            

        }
        system.debug('total salary'+salary );
    }

}