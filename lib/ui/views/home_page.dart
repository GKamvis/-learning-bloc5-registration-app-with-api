import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/repositories/person_dao.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
    return personList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.search),
          ),
        ),
        
          body: Expanded(
            child: FutureBuilder(
                      future: getPerson(),
                      builder: (context, snapshot) {
            if (snapshot.hasData) {
              var people = snapshot.data;
              return ListView.builder(
                itemCount: people!.length,
                itemBuilder: (context, index) {
                  var person = people[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/update' , arguments: person).then((_) {
                        print('returned home page');
                      });
                    },
                    child: Card(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(person.name),
                          Text(person.phone),
                          SizedBox(
                            height: 50,
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
                      },
                    ),
          ),
        );
  }
}
