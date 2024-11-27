import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/Login/bloc/login_page_bloc.dart';

class LoginPage extends StatelessWidget {
  LoginPageBloc loginBloc = LoginPageBloc();

  final _phoneNumberController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: loginBloc,
      buildWhen: (previous, current) => current is LoginPageInitialState,
      listenWhen: (previous, current) => current is LoginPageActionState,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: Column(
            children: [
              Expanded(
                  child: Center(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(color: Colors.red)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextField(
                        controller: _phoneNumberController,
                        keyboardType: TextInputType.phone,
                        obscureText: false,
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Enter your contact number',
                            hintText: '+91 - XXX000XXXX',
                            labelStyle: const TextStyle(
                                color: Colors.red,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                            hintStyle: TextStyle(color: Colors.red.shade200)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.red,textStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                          onPressed: () {},
                          child: const Text(
                            'Send OTP',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.red),
                          ))
                    ],
                  ),
                ),
              ))
            ],
          ),
        );
      },
    );
  }
}
