    public class SetterGetterMethod {
        Private Decimal salary;
        Private String  name;
        Private String rating;
        
    public void details(){
        system.debug(salary);
    }
    //set method
    public void setName(string n){
        this.name=n;
    }
    public String getName(){
        return name;
    }
     public void setSalary(Decimal salary){
        this.salary=salary;
     }
     public decimal getSalary(){
        return this.salary;
     }
     /*
      //set method name for salary vairable
    public void setSalary(Decimal s){
        if (s >= 8000 && s <= 50000) {
            this.salary = s;
        } else {
            this.salary = 0;
            system.debug('salary is not in valid range. Be in limits buddy!');
        }
        
    }
    public decimal getSalary(){
        return this.salary;
    }*/

}