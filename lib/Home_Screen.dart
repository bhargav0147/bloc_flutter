// ignore_for_file: file_names

import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: const Text('Bloc With Flutter'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/internetwithbloc'),
                      child: const Text("Internet Check With Bloc")),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/internetwithcubit'),
                      child: const Text("Internet Check With Cubic")),
                ],
              ),
            )));
  }
}
