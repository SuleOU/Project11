@isTest
public class Dmldemo16Test {
    @isTest
    public static void testDml1(){
    //call the method
    DmlDemo16.dmlInsert1();
    //it will not create any record
    //it goes to order and executing but it will not create any record
    //it will creates record in its onw testing world
    //validate by cehcing if record is created
    List<account> acc=[select id,name from account ];//it will be only one method because test base has only one record which is in run time enviorement
    assert.areEqual('Salesforce',acc[0].name);
}
@isTest
public static void dmlInser2(){
    DmlDemo16.dmlInsert2();
    Department__c ld= [SELECT Name__c from Department__c limit 1];
    assert.areEqual('Human Resource',ld.Name__c);
}
//Assert.areNotEqual('IT', listDep[0].Name__c); //it will pass the test only if expected is not equal to acctual.
@isTest
public static void dmlUpdateTest2(){
    //for update method we do  ot have any record in test base so we need data to work
    //1)prepare the data
    //2) call method 
    //3) asssert
    Account a=new account(name='test aa');
    insert a;
    DmlDemo16.dmlUpdate2();
    account acc=[select id,name from account order by CreatedDate limit 1];
    assert.areEqual('Salesforce Inc.',acc.Name);
}@isTest
   public static void empDepTest(){
   // DmlDemo16.dmlInsert2();// we can call this method because we need data for department first
   //second way
   Department__c d = new Department__c();
   d.Name__c = 'Human Resource';
   d.Short_Code__c = 'HR';

   //insert statement
   insert d;
   DmlDemo16.employeeDepartment();
  // Employee__c  emp=[select id, Last_Name__c from Employee__c limit 1];
   employee__c emp = [select id, first_name__c, last_name__c, department__c from Employee__c where department__c = :d.id];
   assert.areEqual('Carolina', emp.Last_Name__c );
   }
}