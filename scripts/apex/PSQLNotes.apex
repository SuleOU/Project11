PPARENTtoCHILD

SELECT Id, Name, Country__c, Department__c, Department__r.name__c, Email__c, First_Name__c, JoinDate__c, Last_Name__c, Phone_No__c, Salary__c FROM Employee__c 
Department__c id the parent because of this is costom object we need to change to Department__r to accesss to parent data

PARENTto CHILD
go to the child ij object menegar find realation ship. Click the parent name you will see child name there use this child name over there take child name and ad __r to end of the clild object name then make table name  


select id, name, name__c, (select first_name__c, country__c from Employees__r) from department__c


having 
select name, count(id) from account group by name having count(id) >1
SELECT country__c ,count(id) FROM Employee__c group by country__c having count(id)>3

// when you use group by it is aggreagated query you will store aggregated Result query.you can use aggregate function without group by max() avg are agregated function
//System.debug(s.get('country__c'));// we use only get () method inside of appostraphy for agregated function
//===================DML==========
     /*
     1) create new instance of account(sObject)
        Account acc=new Account();
        // 2) set field name
        acc.name='Adding';//API name i aldik
        // 3)insert statemnt
        insert acc;// will createrecord in org
        system.debug(acc);
     */