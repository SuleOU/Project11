public class SomeMethods {
    public void method1(){
        String str1='sule Sule eeee aaaa';
        String str2='sule';
        System.debug(str1.contains(str2));
        //contains method is case sensetive
        //
        String str3=str1.toLowerCase().toUpperCase();
    }
    public void medhod2(){
        String st='    Sule   ';
        st=st.trim();
        System.debug(st);
        String st1='Suleaaa';

        Boolean check=st.equals(st1);
       System.debug(check);
    }
    //trim will clean white space for begining ane end NOT middle
    //equals()--->case sensetive
    //we have also equalsIgnoreCase()
    //remove()---Case sensetive
    //removeEnd()--removes to start from first mtches
}