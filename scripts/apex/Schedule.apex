String cron_str='13 13 13 * * ?';
AccountSceduable acs=new AccountSceduable ();
system.schedule('account sch 13 13', cron_str, acs);