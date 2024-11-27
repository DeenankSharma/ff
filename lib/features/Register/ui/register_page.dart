import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/features/Register/bloc/register_bloc.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addressLine1Controller = TextEditingController();
  final TextEditingController _houseNumberController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  RegisterBloc registerBloc = RegisterBloc();

  RegisterPage({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.red,
            title: const Text(
              'Register',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField(
                    controller: _nameController,
                    labelText: 'Full Name',
                    hintText: 'Enter your full name',
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _houseNumberController,
                    labelText: 'House Number',
                    hintText: 'Enter your house number',
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _addressLine1Controller,
                    labelText: 'Address Line 1',
                    hintText: 'Enter your address',
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _cityController,
                    labelText: 'City',
                    hintText: 'Enter your city',
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _pincodeController,
                    labelText: 'Pincode',
                    hintText: 'Enter your pincode',
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _stateController,
                    labelText: 'State',
                    hintText: 'Enter your state',
                  ),
                  const SizedBox(height: 20),
                  _buildTextField(
                    controller: _phoneNumberController,
                    labelText: 'Phone Number',
                    hintText: '+91 - XXX000XXXX',
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      textStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      padding: const EdgeInsets.symmetric(vertical: 15),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Submit',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

// ? a function which returns widget and takes necessary arguements - here, used to build Textfields

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required String hintText,
    TextInputType? keyboardType,
  }) {
    return TextField(
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      obscureText: false,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.red,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
        hintStyle: TextStyle(color: Colors.red.shade200),
      ),
    );
  }
}
