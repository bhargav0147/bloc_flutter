import 'package:bloc_flutter/Internet_Bloc/Bloc/Internet_Bloc.dart';
import 'package:bloc_flutter/Internet_Bloc/Screen/Internet_Home_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => InternetBloc(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            useMaterial3: true,
          ),
          home: const InternetHomeScreen(),
        ));
  }
}
