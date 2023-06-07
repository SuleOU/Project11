public class Book {
    string title;
    string author;
    decimal price;
    public Book(String title,String author,Decimal price) {
      this.author=author;// first variable comes from class variable
      this.price=price;// set the values and get the values
      this.title=title;//this. user for non static variables and methods
    }
    public void printDetail(){
        system.debug('Print authoe name'+ this.author);//because this method is not static we should use this.author because of cansistency
        system.debug('Print title name'+ this.title);
        system.debug('Print title name'+ this.price);
    }
    //get methods are used to accces calss variables outside of class
    public string getTitle(){
        return  this.title;
    }
    public string getAut(){
        return  this.author;
    }
    public decimal getPrice(){
     return this.price;
    }
    //set method is to update the class variable
    public void setTitle(String title){
        this.title=title;
    }
    public void setAuthor(String author){
        this.author=author;
    }
    public void setPrice(decimal price){
        this.price=price;
    }
}