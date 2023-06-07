public class SetDemo {
    public static List<string> citySet(){
        List <String> ct=new  list <String>();
        ct.add('London');
        ct.add('Lond');
        ct.add('Tokyo');
        ct.add('berlin');
        ct.add('BERLIN');
        return ct;
    }

    public static void intSet(){
        Set <Integer> num=new  Set <Integer>();
        for(integer i=0;i<10;i++){
            num.add(i*5);
            num.add(i*5);
        }
     System.debug(num);
    }
    public static set<String>  setFromList(){
        Set<string>mySet=new set<String>();
        myset.addAll(citySet());
       // system.debug(myset);
       return mySet;
    }
    public static Set<integer> setfromList(List<Integer> s){
        Set<Integer> k=new set<Integer>();
           
          k.addAll(s);
          return k;

    }
    public static void setUpperCase(){
        Set<String> ss=new Set<String>();
        for(String l:setFromList())
           ss.add(l.toUpperCase());
           system.debug(ss);
    }
    public static void IntPrac(){
        Set<Integer> pp=new Set<Integer>{1,2,3,4,5,6};
         for (integer n:pp)
         System.debug(n*5);
    }
}
//there is no order with set .
//Takes only unique values
//it prints value alfabaticly
//for loop will not work
////we can't use any method or any operation on NULL