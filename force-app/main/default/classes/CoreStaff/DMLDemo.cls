public class DMLDemo {
    public static Account dmlInsert1(){
        //1) create new instance of account(sObject)
        Account acc=new Account();
        // 2) set field name
        acc.name='Adding';//API name i aldik
        // 3)insert statemnt
        insert acc;// will createrecord in org
       // system.debug(acc);
       return acc;
    }
      public static void dmlinsert2(){
         Department__c dd= new Department__c();//api name for department is Department__()
         dd.Name__c='Human Resources';
         dd.short_code__c='HR';
         insert dd;
      }

      public static void dmInsert3(){
        Employee__c emp=new Employee__c();
        emp.First_Name__c='Cheyly';
        emp.last_name__C ='Powel';
        emp.Country__c='canada';
        emp.JoinDate__c=date.today();
        emp.Email__c='kk@gmail.com';
        emp.Salary__c=125000;

        insert emp;
        System.debug(emp);

      }
      public static void dmlUpdate(){
       Account a2= dmlInsert1();// ID is mendetory for  update query
          a2.name='new Name';
          update a2;
          system.debug(a2);
      }
      public static void exsistedAccount(){
        Account aa=[select id, name from account order by CreatedDate desc limit 1];
         aa.name='SalesForce Inc';
         update aa;

      }
      public static void dmlUpdate4(){
       Employee__c em=[select id, country__c, first_name__c from employee__c where country__c = 'USA' limit 1];
       em.country__c='Canada';
       em.first_name__c='Elizabeth';
       update em;
        
      }

      public static void Insert4(){
        Contact cc=new Contact();
        Account myAc=dmlInsert1();
        cc.lastName='lllkkk';
        cc.AccountId=myAc.id;//ojject ten id aldigimiz zaman sadece nokta kullaniyoruz;
          insert cc;
      }
      public static void VitapWay(){
        account acc=[select id, name from account order by createddate desc limit 1 ];
        id accountId=acc.id;
        //create contact
        Contact cc=new Contact();
        cc.lastName='kkk';
        cc.AccountId=acc.id;
        insert cc;

      }
}