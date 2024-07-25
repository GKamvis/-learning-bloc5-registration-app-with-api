import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/data/repositories/person_dao.dart';
import 'package:myapp/ui/cubit/home_page_cubit.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomePageCubit()..getPerson(),
      child: Scaffold(
          appBar: AppBar(
            title: IconButton(
              onPressed: () {
              },
              icon: const Icon(Icons.search),
            ),
          ),
          
            body: BlocBuilder<HomePageCubit, List<PersonDao>>(
             builder: (context, people) {
            if (people.isNotEmpty) {
              return ListView.builder(
                itemCount: people.length,
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
