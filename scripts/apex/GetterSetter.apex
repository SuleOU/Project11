SetterGetterMethod sg=new SetterGetterMethod();
sg.setName('saule');
sg.setSalary(20000.00);
Decimal  salaryValue=sg.getSalary();
String nameValue=sg.getName();
System.debug(salaryValue);
System.debug(nameValue);

/*system.debug('--------');
Employee newEmp2 = new Employee();
newEmp2.setName('Jesse Pink');
newEmp2.setSalary(60000);
string newEmpName2 = newEmp2.getName();
decimal newEmpSalary2 = newEmp2.getSalary();
system.debug(newEmpName2 + ' salary is ' + newEmpSalary2);*/
