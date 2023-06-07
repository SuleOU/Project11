MapDemo.mapPrac();
Map<String,String> mp1=new map<String,String>();
mp1.put('Turkey', 'lira');
mp1.put('USA', 'Dolar');
mp1.put('France', 'Euro');
mp1.put('Germany', 'Euro');
mp1.put('Jordan', 'Dinar');
mp1.put('England', 'Pound');
System.debug(mp1);
Set <String> keyTry=mp1.keySet();
for(String n:keyTry){
String valueOfKey=mp1.get(n);
System.debug('Country is '+ n +'Currecncy is ' +valueOfKey);
}

system.debug('=============000==========00=========');
Map<String, decimal> mapLow = new Map<String, decimal>{'short'=>9.44,'socks'=>'8.11','tshirt'=>'9.56'};
Map<String, decimal> mapHigh = new Map<String, decimal>{'blouse'=>19.44,'skirt=>'18.11,'hat'=>'19.56'};

MapPractice1.MapItem();

        map<integer, string> monthMap = new map<integer, string>();
        monthMap.put(1, 'January');
        monthMap.put(2, 'February');
        monthMap.put(3, 'March');
        monthMap.put(4, 'April');

        monthMap.put(5, 'May');
        monthMap.put(6, 'June');
        monthMap.put(7, 'july');
        monthMap.put(8, 'august');

        monthMap.put(9, 'September');
        monthMap.put(10, 'October');
        monthMap.put(11, 'November');
        monthMap.put(12, 'December');

        system.debug(MapPractice1.retriveMonth(2, monthMap));

