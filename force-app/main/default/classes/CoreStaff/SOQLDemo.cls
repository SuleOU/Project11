public  class SOQLDemo {
    public static void  accountSQL(){
     List<account> myList=[ select id,name,phone from account];
     system.debug(myList);
     for(Account s:myList){
        system.debug(s.name);
        system.debug(s.Phone);
     }
    }
    public static void accountSOQL1(){
        List<account> myList=[ select id,name,phone from account order by createddate desc limit 1];
        Account acc=[ select id,name,phone from account order by createddate desc limit 1];
        system.debug(myList);
        system.debug(acc);
        string accStr=acc.Name;//we use to acccess object field
        System.debug(acc.Name);
        System.debug(accStr);
        for(account k:myList){
            system.debug('======0000=======');
            system.debug(k);
            
        }
        
    }
}
//soql queries should  be in []