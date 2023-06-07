public class LoopDemo {
    integer i=1;
    public void print1(){
     while(i<=10){
        System.debug(1);
        i++;
     }
     

    }
    Integer j=1;
    public void print2(){

        while(j<=25){
           System.debug(j);
           j++;
        }
        
   
       }
       public void print3(Integer n){
        String str='';
        for( Integer i=0;i<n;i++){
           // system.debug(i);
            str=str+String.valueOf('*');
            
            system.debug(str);
        }
         
       // system.debug(str);
       }
       public void oddNumber(Integer startInt,Integer endInt){
            for(integer i=startInt;i<endInt;i++){
               Integer reminder=math.mod(i,2);
               if(reminder==1){
                System.debug(i);
               }
         
       }
}
      public void print4(){
        integer n=5;
        Integer m=1;
        for(integer i=1;i<=n;i++){
            m=m*i;
            system.debug(m);
        }
        system.debug(m);
      }
}