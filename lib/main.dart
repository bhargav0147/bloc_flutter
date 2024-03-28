// ignore_for_file: equal_keys_in_map

import 'package:bloc_flutter/Internet/Bloc/Internet_Bloc.dart';
import 'package:bloc_flutter/Home_Screen.dart';
import 'package:bloc_flutter/Internet/Screen/Internet_Bloc_Home_Screen.dart';
import 'package:bloc_flutter/Internet/Screen/Internet_Cubit_Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => InternetBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => const HomeScreen(),
            '/internetwithbloc': (context) => const InternetBlocHomeScreen(),
            '/internetwithcubit': (context) => const InternetCubitHomeScreen(),
          },
        ));
  }
}
