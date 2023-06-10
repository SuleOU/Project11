public class MethodTypes {
    public void practice1(String name){
     String str='Hey there , welcome to Apex';
     
     String replace=str.replace('there', name);
     system.debug(replace);
    }
}