AccountBatch ab = new AccountBatch();
Database.executeBatch(ab, 30);
List <Case> cc=new List<Case>();
for (Integer i = 0; i < 205; i++) {
    Case c = new Case(Subject = 'There is a bug ' + i, Origin ='Web', status = 'New', Description ='Resolve it.' );
    cc.add(c);
}
insert cc;