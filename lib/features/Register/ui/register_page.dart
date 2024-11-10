import 'package:flutter/material.dart';
import 'package:untitled/features/Register/bloc/register_bloc.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  void initState() {
    registerBloc.add(RegisterInitialEvent());
    super.initState();
  }

  final RegisterBloc registerBloc = RegisterBloc();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
