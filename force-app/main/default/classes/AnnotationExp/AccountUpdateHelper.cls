public  class AccountUpdateHelper {
    @InvocableMethod//it works to call this method from process builder
    public static void updateAccountWebsite(List<id>accId){
        //get all the record 
        list<account> listAcc = [select id, website from account where id in :accId];
        for(account s:listAcc){
            s.Website='wwww.something';
        }
        update listAcc;
    }
}