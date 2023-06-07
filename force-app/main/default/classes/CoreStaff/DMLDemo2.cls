public class DMLDemo2 {
   //create an empleyee for latest creted department
   public static void EmpDept() {
     department__c d=[SELECT Id, Name__c FROM Department__c order by createddate desc limit 1];
     Employee__C emp=new Employee__C ();
     emp.First_Name__c='Sheryyyy';
     emp.last_name__C='Can';
     emp.JoinDate__c=date.today();
     emp.Salary__c=45000;
     emp.department__c=d.id;//employee table yada ui bakabilirsin
     insert emp;// with loop do not put this inside of loop
   }
   //Do not write DML inside LOOPS ever NOT allwoed

   public static void dmlInsertRinghtWay(){
    List<Account> laa=new List<Account> ();
    
    for(integer i=0;i<155;i++){
        Account aa=new Account();// we need to put inside of loop
         aa.name='trying ' +i;
         laa.add(aa);
    }
      insert laa;
   }
    //do not ise SOQL inside of loop

    //how to update
    public static void dmlBullUpdateRight1(){
        List <account> allAcc=[select id, name from account where createddate = TODAY];
        for(account s:allAcc){
            s.rating='Hot';
        }
        update allAcc;// it should be aouside
    }

    public static void dmlUpdateRight2(){
        List<Account> allAcc=[select id, name, active__c from account];
        //lets say we have 500 record
        // update all the account that has active!=yes

        List<Account> activeAcc=new List<Account>();
        for(Account s:allAcc){
            if(s.active__c!='Yes'){
                s.description='inactive it is';
                activeAcc.add(s);
            }
        }
        update activeAcc;
    }
}
