import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});
  var tfController = TextEditingController();
  var tfController2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
                controller: tfController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  )),
                  hintText: 'Enter your name',
                )),
            TextField(
                controller: tfController2,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                    Radius.circular(20),
                  )),
                  hintText: 'Enter your name',
                )),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/bottomnavigation');
                  print(tfController2.text); 
                },
                child: const Text('Submit'))
          ],
        )),
      ),
    );
  }
}
