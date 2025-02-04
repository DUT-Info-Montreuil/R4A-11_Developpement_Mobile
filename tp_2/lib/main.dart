import 'package:counter_app/models/counter_model.dart';
import 'package:counter_app/viewmodels/counter_view_model.dart';
import 'package:counter_app/views/home_view.dart';
import 'package:counter_app/views/second_view.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/core/constants/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterViewModel(CounterModel()),
      child: MaterialApp(
        title: appTitle,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const HomeView(),
          '/second': (context) => const SecondView(),
        },
      )
    );
  }
}