import 'package:app_anotacoes/controllers/controllers.dart';
import 'package:app_anotacoes/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.I;
  getIt.registerSingleton<GerenciaAnotacao>(GerenciaAnotacao());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App - Anotações',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 250, 248, 248),
      ),
      home: const HomePage(),
    );
  }
}
