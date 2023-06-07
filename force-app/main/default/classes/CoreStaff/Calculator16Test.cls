@isTest
public class Calculator16Test {
    @isTest
    private  static void testMethod1(){
       Calculater16 c=new Calculater16();
        c.add(5.5, 4.5);
    }
    @isTest
    public static void testAddMethod(){
        Calculater16 c=new Calculater16();
        Integer sum=c.add(5, 5);
        Assert.areEqual(10,sum);
        Assert.isTrue(10==sum);//another way to do assestation
    }
    @isTest
    private static void testLeapYear(){
        Calculater16 c=new Calculater16(); 
        
        Assert.isFalse(c.leapYearCheck(date.today()));
//date.newInstance(2020,1,15, arg1, arg2)
}
}