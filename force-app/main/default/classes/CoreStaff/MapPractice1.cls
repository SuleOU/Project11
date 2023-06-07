public class MapPractice1 {
 public static void MapItem(){
    Map<String, decimal> mapList = new Map<String, decimal>{'short'=>9.44,'socks'=>8.11,'tshirt'=>9.56,'skirt'=>12.66};
    Map<String, decimal> mapLow = new Map<String, decimal>();
    Map<String, decimal> mapHigh = new Map<String, decimal>();

    for(String product:mapList.keySet()){
        decimal price=mapList.get(product);
        if(price>10){
            mapHigh.put(product, mapList.get(product));
        }else{
            mapLow.put(product, mapList.get(product));
        }
       
    }
    System.debug(mapHigh);
    System.debug(mapLow);

}   
   public static String retriveMonth(Integer n, Map<Integer,String> myMap){
   // String month='';
   if(myMap.containsKey(n))
    //month.get(n);
    return myMap.get(n);
    else {
        return 'No such a moth is exsisted';
    }
   }

}