public class ListDemo2 {
    public static boolean candidateList(string str){
        List<string> listC = new list<string>();
        system.debug('before : ' + listC);

        //add values or elements or items in list
        listC.add('Marc');  //0
        listC.add('Steve'); //1
        listC.add('Kunal'); //2
        listC.add('Marc');  //3
        listC.add('Marc');  //4
        system.debug('after : ' + listC);
        //contains is case sensitive for string
        boolean check = listC.contains(str);
        return check;
   }
   public static void friendsList(){
    List<String>f= new List<String>{'Cen','Ten','ten','tEn','Ten','1'};
    system.debug(f);
    f.sort();
    system.debug(f);
   }
   public static void iterateList(){
    List<integer>num=new List<Integer>{1,3,4,566,67,55};
     for(integer n:num){
        System.debug(n);
     }
   }
   public static void iterateList2(){
    List<integer>num=new List<Integer>{1,3,4,566,67,55};
     for(integer n:num){
        System.debug(5+'x'+num+'='+n*5);
     }
   }

   public static Integer add(List<Integer> n){
    integer sum=0;
    if(n.size()==0)
    return sum;
    for(integer i=0;i<n.size();i++){
        sum=sum+n.get(i);
    }
    return sum;
   }

   public static integer add2(list<integer> l1) {
    integer sum = 0;
    
    for (integer num : l1) {
        system.debug('sum inside for : ' + sum);
        sum += num; //sum = sum + num
    }

    return sum;
}
   public static void iterateString1(){
    List<String>f= new List<String>{'Cen','Ten','ten','tEn','Ten','1'};
    String result='';
    for(String s:f){
        result=s+'- '+s.length();
        system.debug(result);
    }
    
   }
   public static String addS(list<String> s){
    String finalStr='';
    for(String str:s){
        finalStr=finalStr+'||'+str;
    }
    return finalStr;
   }
}
//for each loop gets elemnt by one by and prints
//breake can be used the stop execuation 
// inside of for each loop of a list ,we CAN NOt modify (add or remove and elemnet from) list
//but we can create anothervlist and add what we want to do modification
