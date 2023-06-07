 AccountQuableExaple  aq= new AccountQuableExaple ([select id, name from account where createddate=last_month]);

 id jobId=system.enqueueJob(aq);