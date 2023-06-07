@isTest
public class DmlDemo16AgainTest {
    @isTest
    public static void testDML5(){
        //prepare a data because this is update we can not get data by soql
       List <account> myList= new List <account>();// our method is updateting record that is created today that could be more then 1 record 
         for(integer i=0;i<2555;i++){
            account ac=new account();
              ac.Name='Unit test' +i;
              myList.add(ac);
         }
       
       insert myList;

       Test.startTest();
       DmlDemo16Again.dmlBulkUpdateRight1();// we can write our method to between Test.startTest() and Test.stopTest()
       Test.stopTest();
       for(account s:[select id, name from account]){
        assert.areEqual('Hot', s.rating);
       }
}
}