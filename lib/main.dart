import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/features/Landing/bloc/landing_bloc.dart';
import 'package:untitled/features/Landing/ui/landing_page.dart';
import 'package:untitled/features/Register/ui/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Provider<HomeBloc>(create: (context) => HomeBloc()),
        Provider<LandingBloc>(
          create: (context) => LandingBloc(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.pink.shade200),
        home: LandingPage(),
      ),
      // debugShowCheckedModeBanner: false,
      // home: Register(),
    );
  }
}
