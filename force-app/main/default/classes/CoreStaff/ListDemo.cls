public  class ListDemo {
    public static void listSomeThing() {
     List<String> myList=new List<String>();
     myList.add('yellow');
     myList.add('red');
     myList.add('pink');
     system.debug(myList);

    }
    public static List<Integer> rondomInt(){
        List<Integer> int1=new List<Integer>();
        int1.add(1);
        int1.add(1);
        int1.add(1);
        int1.add(5);
       // System.debug(int1);
       // System.debug(int1.get(3));
       // System.debug(int1[3]);
       return int1;

    }
    public static String List3(Integer i) {
        List<String> n=new List<String>();
        if(i>=0&&i<n.size()){
            
         n.add('yellow');
         n.add('red');
         n.add('pink');
         n.add('yellow');
         n.add('red');
         n.add('pink');

        return n.get(i);
         }else{
            return 'error';
         }
        
        
        //return n[i]; it will return with two ways
        
    }
}