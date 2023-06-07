    public class Day21Assigmnet {
    //Intheclass,createamethodtopEmployees.
    //The method returns list of top 5 Employees by Salary. 
    public static List<Employee__c> ListTop5() {
        List<Employee__c> myList=[SELECT Id, Salary__c, Name FROM Employee__c where Salary__c!=null order by Salary__c desc limit 5];
        return myList;
    } 
    public static string mostPopContry(){
    
        AggregateResult at=[select country__c, count(id) from employee__c where country__c!=null group by country__c order by count(id) desc limit 1];
        return (string)(at.get('country__c'));
        
    }
    }