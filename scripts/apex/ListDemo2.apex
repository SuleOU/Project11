boolean check1 = ListDemo2.candidateList('Steve');
system.debug('check 1 is ' + check1);

list<integer> l1 = new list<integer>();
l1.add(77);//0
l1.add(15);//1
l1.add(21);//2
l1.add(99);//3
l1.add(77);//4
l1.add(77);//5
system.debug('l1 is ' + l1);

list<integer> l2 = new list<integer>();
l2.add(77);
l2.add(77);
l2.add(15);
l2.add(21);
l2.add(99);
l2.add(77);
system.debug('l2 is ' + l2);

boolean checkl1l2 = l1.equals(l2);
system.debug('l1 equals l2? ' + checkl1l2);
//equals method da order onemli eger order farkliysa ,ayni datalar da olsa false doner
//l2.addAll(l1); butun elementleri ekliyor
//isEmpty();
/*if (!l22.isEmpty()) {
    system.debug(l22);
} else {
    system.debug('nothing');
}
*/
ListDemo2.friendsList();
ListDemo2.iterateList();
ListDemo2.iterateList2();
List <Integer> n=new List<Integer>{1,2,3,4,5};
System.debug(ListDemo2.add(n));
System.debug(ListDemo2.add2(n));
ListDemo2.iterateString1();
List<String>k= new List<String>{'Cen','Ten','ten','tEn','Ten','1'};
System.debug(ListDemo2.addS(k));




