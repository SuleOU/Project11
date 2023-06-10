public class TriggerContactHandler { public static void validate1(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap)
    {
        //validate.
        //if leadsource is ALREADY partner referral, then DON't ALLOW user to update record.

        //addError method to add validation or throw error in trigger.
            //we can use addError method in ONE record of trigger.new or trigger.newMap
            //we cannot use addError method on trigger.old or trigger.oldMap
        
        for (Contact newContact : cTriggerNew) {
            //if old leadsource is partner referral.
            Contact oldContact = cTriggerOldMap.get(newContact.Id);
            if (oldContact.leadsource == 'Partner Referral') {
                newContact.addError('Cannot update contact if lead source is partner referral');
            }

        }
   }



   public static void validate2(List<contact> cTriggerNew, List<contact> cTriggerOld, Map<id, contact> cTriggerNewmap, map<id, contact> cTriggerOldMap){
          for(contact c:cTriggerNew){
            if(c.LeadSource!=cTriggerOldMap.get(c.Id).LeadSource){
               //c.LeadSource.addError('Can not update lead sources');
               c.LeadSource.addError(System.label.ContactValidation2);
               //how to access custom label in apex?
                    //system.label.labelName
                   // c.LeadSource.addError.(System.label.ContactValidation2);
            }
          }
   }
   //question: when the contact is creted ,deleted and updated or undeleted Number of contact field in the ccount will be effected
   //first scenario contact is inserted 
   public static void InsertContact(List<Contact> conNew){
    set<id> accId=new set<id>();
       for(Contact s: conNew){
        if(s.AccountId!=null){
            accId.add(s.AccountId);
        }      
    }
  if(!accId.isEmpty()){
    ConatcCount(accId);
  }
}

//2.durum contact update dilidiginde
 public static void UpdateContac(List<contact> conNew, Map<id,Contact> oldMap){
  set<id> accId=new set<id>();
    for(contact k:conNew){
      if(k.AccountId!=oldMap.get(k.id).AccountId){
         accId.add(k.AccountId);
         accId.add(oldMap.get(k.id).AccountId);
      }
    }
    if(!accId.isEmpty()){
      ConatcCount(accId);
    }
 }
 public static void deleteContac(List<Contact> conOld){//we need only old <List for delete//
  set<id> accId=new set<id>();
      for(Contact k: conOld ){
        if(k.accountid!=null){// delete edilen account id yi gonderip onun contaclarini sayiyoruz
           accId.add(k.AccountId);
        }
      }
      if(!accId.isEmpty()){
        ConatcCount(accId);
      }
 }
public static void ConatcCount( set<id> accId){
  
}



   
}