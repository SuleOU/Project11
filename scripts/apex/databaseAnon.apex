List<account> listAcc = new list<account>{
            new account(name = 'May', phone = '7775556666', Industry = 'Energy'),
            new account(name = 'June'),
            new account(name = 'Sunday', Industry = 'Energy',active__c='Yes'),
            new account()// because of bad data we will not insert this data
        };
       // insert listAcc;
       Database.insert(listAcc,false);//it will insesert the good data and it will skip 
      // Database.insert(listAcc,true);//it will try to insert all
      List<Database.SaveResult> allResults=Database.insert(listAcc,false);
          for(Database.SaveResult s:allResults){
            if(s.isSuccess()){
              system.debug(s.getId());
            }else{
              system.debug('failed' +s.getErrors());
            }
            
          }
      
       List<database.SaveResult> r2 = database.update(l2, false);
       list<database.DeleteResult> r3 = database.delete(lids, false);
       list<database.UndeleteResult> r4 = database.undelete(lids, false);