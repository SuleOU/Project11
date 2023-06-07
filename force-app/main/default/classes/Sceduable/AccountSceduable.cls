public class AccountSceduable  implements Schedulable{

    public void Execute(SchedulableContext sc){
        AccountBatch ab=new AccountBatch();
        id jobid=Database.executeBatch(ab,30);
        CaseBatch cb = new CaseBatch();
        id batchId = Database.executeBatch(cb, 50);
    }
}