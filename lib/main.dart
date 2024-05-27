import 'dart:io';

import 'package:flutter/material.dart';
import 'package:testtask/pages/home.dart';
import 'package:testtask/pages/inspection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testtask/services/counter_cubit.dart';


void main() {
  runApp( MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => Home(),
      '/inspection': (context) => BlocProvider(
          create: (context) => CounterCubit(),
          child: Inspection()),
    },

  ));
}

