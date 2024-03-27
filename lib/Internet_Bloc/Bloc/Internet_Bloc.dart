// ignore_for_file: unrelated_type_equality_checks, file_names, prefer_final_fields

import 'dart:async';

import 'package:bloc_flutter/Internet_Bloc/Bloc/Internet_Event.dart';
import 'package:bloc_flutter/Internet_Bloc/Bloc/Internet_State.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? connectivitySubscription;

  InternetBloc() : super(InternetInitState()) {
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));
    on<InternetBackEvent>((event, emit) => emit(InternetBackState()));

    connectivitySubscription =
        _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetBackEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription!.cancel();
    return super.close();
  }
}
