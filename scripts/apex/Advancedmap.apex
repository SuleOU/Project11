Map<String, list<String>> teamCandiates=new Map<String, list<String>>();
  List<String> l1=new List<String> {'Alex','Benjamin'};
  List<String> l2=new List<String> {'john','Jane'};
  List<String> l3=new List<String> {'David','Peter'};
  teamCandiates.put('IT', l1);
  teamCandiates.put('Math', l2);
  teamCandiates.put('Something', l3);

  Advancedmap.printMap(teamCandiates);
