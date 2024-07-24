import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Expanded(
        child: ListView.builder( itemCount: 4, itemBuilder: (context, index) {
          return Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Item 1'),
                const Text('Item 2'),
                const Text('Item 3'),
                SizedBox(height: 50,)
            ],),
          );
        },),
      )
    );
  }
}