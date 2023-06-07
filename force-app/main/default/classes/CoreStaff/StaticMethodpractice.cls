   public class StaticMethodpractice {
   
      Public String name,gender;
      Public static  string companyName;
      public integer count=0;//if the variable is not static it will not increase every time when I created an
      public static integer count2=0;

      public StaticMethodpractice(){
         count2++;
         count++;
      }
      
      public void details(){
         System.debug('Name is '+ name);
         System.debug('gender is '+ gender);
         System.debug('campany name is '+ companyName);
         System.debug('---00-------00------');
         System.debug(count);
         System.debug('---00-------00------');
         System.debug(count2);
      }

    //static method only access to static variable
    //if I can write same method with static all the non static variable will give error
    //non static method can access to non static and static variable
    public static void  count(){
        
        count2++;
        //System.debug(count);
        System.debug(count2);
    }

   }
