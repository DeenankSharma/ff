import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/Landing/bloc/landing_bloc.dart';
import 'package:untitled/features/Register/ui/register_page.dart';
import '../../Login/ui/login_page.dart';

class LandingPage extends StatelessWidget {
  final LandingBloc landingBloc = LandingBloc();

  LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LandingBloc, LandingState>(
      bloc: landingBloc,
      listenWhen: (previous, current) => current is LandingActionState,
      buildWhen: (previous,current)=> current is LandingInitialState,
      listener: (context, state) {
        if(state is RegisterWithOTPState){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
        }
        else if( state is LoginWithOTPState){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'SAFE',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 48,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Women Safety App',
                    style: TextStyle(
                        color: Colors.red.shade700,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {landingBloc.add(RegisterWithOTPEvent());},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700,
                            fixedSize: const Size(50, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {landingBloc.add(LoginWithOTPEvent());},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade700,
                            fixedSize: const Size(50, 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        child: const Text(
                          'Login with OTP',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
