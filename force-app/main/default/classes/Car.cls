public class Car {
    //variables directly define in classs and we called them class variable.
    //we can use this as properties.
    //we can assing values when we cretae instances
    
    
    String carNumber;
    String name;
    String color;
    Integer mfgYear;
    decimal price;

    public void details(){
        System.debug('car name is '+ carNumber);
        system.debug('car name is ' + name);
        system.debug('color is ' + color);
        system.debug('manufacturing year is ' + mfgYear);
        system.debug('price is ' + price);
    }
    //parameter less constracter
    public Car(){
        System.debug('car contarcter called when new instance is created');
        mfgYear=2023;
    }
    //parameterized constracter
    public Car(Integer yr){
        mfgYear=yr;
    }
    public Car(integer yr,String color1){
        this(yr);
        color=color1;
        //mfgYear=yr;
        details();
        
    }
    public Car(string carnum, string nm, string clr, integer yr, decimal pc){
        carNumber = carnum;
        name = nm;
        color = clr;
        mfgYear = yr;
        price = pc;
        details();//when we addd the method here we do not call the method in the apex class
    }
    //if we are creating any constrocter (user defined constracter) then defaoult constarcter 
    //(behind the screen)will vanish,we can not use it any more
    //I can call a constracter from aother class by creating object and we can reash out the variable by objectnam.varable
    //like tesla.name;
    
}