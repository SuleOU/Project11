//collection can not be key value
    
        

        //VALID maps below
        map<integer, string> map2;//valid

        //boolean as key
        map<boolean, string> map3;//valid. 3 key-value pair possible in this map.

        map<date, string> map4;

        map<string, list<string>> map5;//is this valid?
        //country -> states
        //key is string -> value is list<string>
        //Map has no idex no order
        //mapname.get('USA')-->USD --->it will return value
        // if you want to get all the values ,we need to use values();
        //we use key.Set(); method.It alwas
        Map<String,String> mm=new Map<String,String>{'USA'=>'USD','Turkey'=>'Lira','France'=>'Euro','Jordan'=>'Dinar'};
        Set<string> contry=mm.keySet();
        List<String> lvalues=mm.values();
        system.debug(contry);
        System.debug(lvalues);
        Map<String,Integer> ez=new map<String,Integer>();
         ez.put('one', 1);
         ez.put('two', 2);
         ez.put('three', 13);
         //Set<String> allKey=ez.keySet();
         for(String s:ez.keySet()){
          //integer keyValue=s.get(s.keySet());// get all the key value and store a integere because value are Intgere
         System.debug(s);
         System.debug(keyValue);
         }
         // get method  will get value of the key 
         for(Integer k:ez.values())
         System.debug(ez);
        Map<string, integer> map2 = new map<string, integer>();
map2.put('one', 101);
map2.put('two', 202);
map2.put('three', 303);

//get all keys from map -> we use KEYSET method


integer i1 = map2.get('one');//101
integer i2 = map2.get('two');//202
integer i3 = map2.get('three');//303

set<string> allKeys = map2.keySet();
system.debug('all keys ' + allKeys);
//{one, three, two}

for(string eKey : allKeys){
    //loop will execute three times
        //1. ekey => one
            //map2.get(ekey) ==> map2.get('one');
        //2. ekey => two
        //3. ekey => three
    system.debug('key is ' + eKey);
    integer i = map2.get(ekey);
    system.debug('value is ' + i);
        //1. i => 101
        //2. i => 202
        //3. i => 303
}

