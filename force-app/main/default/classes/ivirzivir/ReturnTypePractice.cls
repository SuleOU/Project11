public class ReturnTypePractice {
    Public Boolean myname(String name){
        if(name.containsIgnoreCase('a')){
            return true;
        }
        return false;
    }

    public integer howManyContains(String name){
        integer  len1=name.length();
        String remove=name.replace('a','');
        Integer len2=remove.length();
        return len1-len2;

    }
    public void printAll(){
        system.debug('0000');
        print1and2();
        system.debug('1111');
        print3();
        system.debug('2222');
    }
    
    public void print1(){
        system.debug('1. print this first');
    }
    public void print2(){
        system.debug('2. print this second');
    }
    public void print1and2(){
        print1();//this is how we call another method in same class.
        print2();
    }
    public void print3(){
        system.debug('3. print this third');
    }
    public integer add(integer a,Integer b){
        return a+b;
    }
     public Boolean leapYearCheck(date dt){
         Integer yr= dt.year();
         Boolean leap=date.isLeapYear(yr);
         return leap;
     }
     public integer add(integer x, integer y, integer z){
        integer sum1 = add(x,y);
        integer sum = add(z, sum1);
        return sum;
    }
}