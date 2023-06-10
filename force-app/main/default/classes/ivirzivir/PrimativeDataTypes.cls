  public class PrimativeDataTypes {
      public void print1() {
        String batc='B16';
        integer num=45;
        System.debug(batc+num);
      }

      public void print2(){
          Decimal d = 88;
          long l1=3333L;
          id aaid='00Q3x00001soktREAQ';
          System.debug(d);
          System.debug(l1);
          System.debug(aaid);
          Object obj='It takes all the value';
          System.debug(obj);
          double num=884.88;
          System.debug(num);
          

      }

      public void practiceDecimals(){
        Decimal d1=3.14159;
        d1=d1.setScale(2);//it is rounding acording to 3 character
        Decimal d2=1.57;
        d2=d2.setScale(2);
        System.debug(String.valueOf(d1));
        System.debug(String.valueOf(d2));
        
      }

      //Primative date type
      public void datePractice(){
        Date myDate1=Date.newInstance(2023, 2, 17);//YY/MM/DD

        Date myDate2=Date.newInstance(2023, 2, 00);
        System.debug(myDate2);
        Date todayDate=date.today();
          //today's
              // escape character -> \ -> it will ignore the next character
          system.debug('today\'s date is ' + todayDate);
          //system.debug('today's date is ' + todayDate);
      }

        public void timePractice(){
          Time  mtTime1=Time.newInstance(20, 25, 20, 500);//new instance(hour,minute,secon,mili)
          Time  mtTime2=Time.newInstance(25, 80, 20, 500);//new instance(hour,minute,secon,mili)
          system.debug(mtTime1);
          System.debug(mtTime2);

      }
        public void DateTime(){
          Date myDate1=Date.newInstance(2023, 2, 17);
          Time  mtTime1=Time.newInstance(20, 25, 20, 500);
          DateTime dtTogether=DateTime.newInstance(myDate1, mtTime1);

          System.debug(dtTogether);
          System.debug(mtTime1);
          //3. create new DATETIME using year, month, day, hour, minute, second
          datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);//will create as per user timezone.
          system.debug('dt3 ' + dt3);//print as per gmt--my out put will be differnt check
          //currecnt dataTime
          DateTime current=Datetime.now();
          System.debug(current);//GMT time will beprint ALWAYS It doent matter which time user use
          //4. new datetime using long variable
        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 is ' + dt4);//which datetime it will print?

        long longtime = 9198784512113l;
        datetime dt44 = datetime.newInstance(longtime);
        System.debug('dt44 is ' + dt44);
        //
        }

        //1. new DATE
    public void printNewDate(){
        system.debug('create new date instance');
        
        //datatype          newInstance(year, month, day)
        date    newDate = date.newInstance(1992, 6, 3);
        system.debug('newDate is ' + newDate);

        date newDate2 = date.newInstance(2023, 1, 15);
        system.debug('newDate2 is ' + newDate2);

        date todayDate = date.today();
        //today's
            // escape character -> \ -> it will ignore the next character
        system.debug('today\'s date is ' + todayDate);
    }

    public void printNewTime(){
        //newinstance(hour, minute, second, millisecond)
        time myTime1 = time.newInstance(10, 15, 20, 500);
        system.debug('mytime1 ' + myTime1);

        time myTime2 = time.newInstance(25, 80, 30, 100);
        system.debug('myTime 2 ==> ' + myTime2);
    }

    public void printNewDateTime(){
        //method name is 'newInstance'
            //different parameters
        date    newDate = date.newInstance(1992, 6, 3);
        time myTime1 = time.newInstance(10, 15, 20, 500);
        
        //1. create new DATETIME using Date and Time
        Datetime dt1 = datetime.newInstance(newDate, myTime1);
        system.debug(dt1);

        //2. create new DATETIME using  year, month, day
        datetime dt2 = Datetime.newInstance(2020, 5, 12); //time will be midnight
            //newInstance > creates new datetime midnight as per user's timezone
        system.debug('dt2 is ' + dt2);//while printing it prints as per GMT

        //3. create new DATETIME using year, month, day, hour, minute, second
        datetime dt3 = Datetime.newInstance(2005, 1, 18, 8, 30, 55);//will create as per user timezone.
        system.debug('dt3 ' + dt3);//print gmt

        //6. current datetime
        datetime dt6 = Datetime.now();
        system.debug('current datetime : ' + dt6);//which time zone it PRINTS? GMT.

        //4. new datetime using long variable
        datetime dt4 = datetime.newInstance(0);
        system.debug('dt4 is ' + dt4);//which datetime it will print?

        long longtime = 9198784512113l;
        datetime dt44 = datetime.newInstance(longtime);
        System.debug('dt44 is ' + dt44);

        //5. create new datetime as GMT
        datetime dt5 = datetime.newInstanceGmt(2023, 4, 1, 10, 15, 30);//this will create new datetime as per GMT
        System.debug('dt5 is ' + dt5);
    }
  }