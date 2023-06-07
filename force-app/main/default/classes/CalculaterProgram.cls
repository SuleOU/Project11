public  class CalculaterProgram {

    public integer add(Integer x,Integer y,Integer z){
        ReturnTypePractice aa=new ReturnTypePractice();
        //aa.add(x, y);
        return aa.add(aa.add(x, y), 5);
    }
}