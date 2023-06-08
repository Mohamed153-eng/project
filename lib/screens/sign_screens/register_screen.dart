import 'package:flutter/material.dart';
import 'package:graduation/components/text/text_button.dart';
import 'package:graduation/components/text/text_form_field.dart';
import 'package:graduation/constants/colors.dart';
import 'login_screen.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  static const String registerScreenRoute = 'register screen';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey, // Assign the form key
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Create Your Account',
                            style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width / 12.5,
                              color: defBlue,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ReusableTextFormField_log_reg(
                      text: 'User name',
                      prefix: Icon(Icons.person),
                      textInputType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a user name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    ReusableTextFormField_log_reg(
                      text: 'Email',
                      prefix: Icon(Icons.email),
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an email';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    ReusableTextFormField_log_reg(
                      text: 'Phone Number',
                      prefix: Icon(Icons.phone_android_rounded),
                      textInputType: TextInputType.number,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a phone number';
                        }

                        return null;
                      },
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    ReusableTextFormField_log_reg(
                      text: 'ID Cart',
                      prefix: Icon(Icons.credit_card_sharp),
                      textInputType: TextInputType.text,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter an ID card';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    ReusableTextFormField_log_reg(
                      text: 'Password',
                      prefix: Icon(Icons.lock),
                      textInputType: TextInputType.visiblePassword,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter a password';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    ReusableTextButton(
                      color: defBlue,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            LoginScreen.loginScreenRoute,
                            (Route<dynamic> route) => false,
                          );
                        }
                      },
                      text: 'REGISTER',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
