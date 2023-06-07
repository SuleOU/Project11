
    @isTest
    public class SOQLDemo3TestClass {
        @TestSetup
        static void makeData(){
            List<account> listAcc= new List<account>{ new account(name='May',phone='5556786655',industry='Energy'),
                                                    new account(name='June',phone='567786655'),
                                                    new account(name='Sunday',phone='5556786655',industry='Energy')};
       insert listAcc;
       List<contact> listContact=new List<contact>();
          for(integer i=0;i<300;i++){
            contact c=new contact(lastname='test con'+i);
             if(i<100){
                c.AccountId=listAcc[0].id;
             }else if(i<200){
                c.AccountId=listAcc[1].id;
             }else{
                c.AccountId=listAcc[2].id;
             }
             listContact.add(c);
          }
           insert listContact;
        }
        @isTest
        private static void testSOQL1(){
         SoqlDemo3TestSetUp.childToParentQuery();
        }
        @istest
        //regular way
        private static void testSOQL2(){
         //we need opportunity for account records.
        list<account> allAcc = [select id, name, industry from account];
        //what will be industry for each acc here?
            //1. Same as setup
        List<Opportunity> listOpp = new List<Opportunity>();
        Opportunity opp = new Opportunity(name = 'TEst opp', CloseDate = date.today(), StageName ='New', amount = 5000,accountid=allAcc[0].id);
        listOpp.add(opp);
        Opportunity opp2 = new Opportunity(name = 'TEst opp 2', CloseDate = date.today(), StageName ='New', amount = 10000,accountid=allAcc[0].id);
        listOpp.add(opp2);
        insert listOpp;
        SoqlDemo3TestSetUp.childToParentSOQL1();
    }
         
        }
    