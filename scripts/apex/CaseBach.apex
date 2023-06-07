CaseBatch bc=new CaseBatch ();
id jobId Database.executebatch(bc, 50);
AsyncApexJob job = [SELECT Id, Status, JobType, MethodName, NumberOfErrors FROM AsyncApexJob where id = :jobId];
system.debug(job);