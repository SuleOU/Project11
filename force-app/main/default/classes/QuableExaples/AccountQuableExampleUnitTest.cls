@isTest
public class AccountQuableExampleUnitTest {
    @isTest
    private static void testQUable1(){
  //prepare data
    List<account> accList=new  List<account> ();
       for(integer i=0;i<500;i++){
        Account acc=new Account(name='Test account' +i);
        accList.add(acc);
       }
       insert accList;
       Test.startTest();
       AccountQuableExaple aq = new AccountQuableExaple();
       aq.listAcc=accList;
       system.enqueueJob(aq);
       Test.stopTest();
       //assert
       List<account> lisss=[select id,name from account where name like'%--SI%'];
       assert.areEqual(500, lisss.size());
    }
    
}