import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/ui/cubit/navigation%20cubits/navigation_bloc.dart';
import 'package:myapp/ui/views/registration_page_dart.dart';
import 'home_page.dart';
import 'update_page.dart';

class MyBottomNavigation extends StatelessWidget {
  const MyBottomNavigation({Key? key}) : super(key: key);

  final List<Widget> pages = const [
    HomePage(),
    RegistrationPage(),
    UpdatePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NavigationBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Bottom Navigation'),
        ),
        body: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return pages[state.selectedIndex];
          },
        ),
        bottomNavigationBar: BlocBuilder<NavigationBloc, NavigationState>(
          builder: (context, state) {
            return BottomNavigationBar(
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
                BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add'),
                BottomNavigationBarItem(icon: Icon(Icons.update), label: 'Update'),
              ],
              currentIndex: state.selectedIndex,
              onTap: (index) {
                context.read<NavigationBloc>().add(NavigateToPage(index));
              },
              backgroundColor: Colors.blue,
              unselectedItemColor: Colors.white,
              selectedItemColor: Colors.black,
            );
          },
        ),
      ),
    );
  }
}
