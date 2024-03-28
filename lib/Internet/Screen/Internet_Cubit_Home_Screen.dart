// ignore_for_file: file_names

import 'package:bloc_flutter/Internet/Cubit/Internet_Cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetCubitHomeScreen extends StatelessWidget {
  const InternetCubitHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Internet Check'),
      ),
      body: Center(
          child: BlocConsumer<InternetCubit, InternetCubitState>(
        listener: (context, state) {
          if (state == InternetCubitState.back) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Connected'),
                backgroundColor: Colors.green,
              ),
            );
          } else if (state == InternetCubitState.lost) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Not Connected'),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        builder: (context, state) {
          if (state == InternetCubitState.back) {
            return const Text('Connected');
          } else if (state == InternetCubitState.lost) {
            return const Text('Not Connected');
          } else {
            return const Text('Loading ...');
          }
        },
      )),
    ));
  }
}
