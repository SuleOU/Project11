public class Operators {
    public String rankPrize(Integer rank){

        String prize='';
    
        switch on rank {
            when 1 {
                prize='Gold';
            }
            when 2 {
                prize='Silver'; 
            }
            When 3 {
                prize='Bronze'; 
            } 
            when 4,5,6,7,8,9,10{
                prize='Bronze'; 
            }
            when else{
                prize='Aliminum';
            }
        }
         return prize;           
        
    }    
}