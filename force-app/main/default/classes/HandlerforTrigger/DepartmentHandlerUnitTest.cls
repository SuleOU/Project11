@isTest
public  class DepartmentHandlerUnitTest {
    @istest
    private static void DepUnitTest(){
        list<Department__c> listDep = new list<department__c>{
            new Department__c(Name__c = 'Future'),
            new Department__c(Name__c = 'Present'),
            new Department__c(Name__c = 'Past')};
                                                  

     Test.startTest();
     insert listDep;
     Test.stopTest();// we noot to makwe sure that any asynch process has completed the execution 

     //asssert
     List<Employee__c> empList=[select id from Employee__c];
     assert.areEqual(3, empList.size());
    }
}