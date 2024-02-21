class Details
{
  String path;  //Lap Image PATH
  String name;  //Lap NAME
  String id;    //Lap ID "I-303" etc...

  Details({required this.path, required this.name, required this.id});
}

final List<Details> detials = 
[
  Details(name:"LAP 4",     path: "assets/img/L4.", id: 'I-302',),
  Details(name:"LAP 3",     path: "assets/img/L3.", id: 'I-303',),
  Details(name:"LAP 2",     path: "assets/img/L2.", id: 'I-305',),
  Details(name:"Class 2",   path: "assets/img/C2.", id: 'I-306',),
  Details(name:"Class 1",   path: "assets/img/C1.", id: 'I-307',),
  Details(name:"Cisco LAP", path: "assets/img/CL.", id: 'I-308',),
  Details(name:"LAP 1",     path: "assets/img/L1.", id: 'I-309',),
];
