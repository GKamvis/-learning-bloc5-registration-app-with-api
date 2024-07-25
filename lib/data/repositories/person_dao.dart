class PersonDao {
  int id;
  String name;
  String phone;
  PersonDao({required this.id, required this.name, required this.phone});
}

class PersonRepository {
  Future<List<PersonDao>> getPerson() async {
    var personList = <PersonDao>[];
    var p = PersonDao(id: 1, name: 'name', phone: 'phone0');
    var p1 = PersonDao(id: 2, name: 'name1', phone: 'phone1');
    var p2 = PersonDao(id: 3, name: 'name2', phone: 'phone2');
    var p3 = PersonDao(id: 4, name: 'name3', phone: 'phone3');
    personList.add(p);
    personList.add(p1);
    personList.add(p2);
    personList.add(p3);
    personList.add(p1);
    return personList;
  }


  
}
