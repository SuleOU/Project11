public class DatatimeMothod2 {
    public void calculateAges(){
        Date age=Date.newInstance(2022, 10, 10);
        Date todayt=date.today();
        Integer dif=age.monthsBetween(todayt);
       system.debug(dif);

    }

    public void agesInDate(){
        Date age=Date.newInstance(2022, 10, 10);
        Date todayt=date.today();
        Integer dif=age.daysBetween(todayt);
       system.debug(dif);
    }

     public void printSubEndDate(){
       // Date  subEndDate=date.today().addDays(1000);
       // System.debug(subEndDate);
        Date  subEndDate=date.today().addDays(-1000);
        System.debug(subEndDate);
        //get year component
        Integer endYear=subEndDate.year();
        System.debug(endYear);
        Integer endMonth=subEndDate.month();
        System.debug(endMonth);
     }
     public void printEndOfEndDateTime(){
        //Datetime offerStart=Datetime.now();
        System.debug(Datetime.now().addHours(51));
        //getTime() comverts number of milisecond from 1 jan 1970 midnight
       //i have to pass my birth datetime to twitter
    //and twitter is expecting datetime in LONG number format
Datetime birthDate = datetime.newInstance(1990, 10, 9);
long longBirthDate = birthDate.getTime();//this is number of milliseconds from 1 Jan 1970 midnight to 1990 october 9
system.debug('long birth date ==> ' + longBirthDate);//i will send this long to twitter.
     }
}