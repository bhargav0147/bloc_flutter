// ignore_for_file: file_names

import 'package:bloc_flutter/Internet/Bloc/Internet_Bloc.dart';
import 'package:bloc_flutter/Internet/Bloc/Internet_State.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBlocHomeScreen extends StatelessWidget {
  const InternetBlocHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Internet Check'),
      ),
      body: Center(
          child: BlocConsumer<InternetBloc, InternetState>(
        listener: (context, state) {
          if (state is InternetBackState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Connected'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state is InternetLostState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Not Connected'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state is InternetBackState) {
            return const Text('Connected');
          } else if (state is InternetLostState) {
            return const Text('Not Connected');
          } else {
            return const Text('Loading ...');
          }
        },
      )),
    ));
  }
}
