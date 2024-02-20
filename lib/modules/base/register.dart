import 'package:black_box/modules/base/login.dart';
import 'package:black_box/utils/appbar.dart';
import 'package:flutter/material.dart';

double width = 500;
double height = 50;

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: defaultAppBar(
          appBarTitle: "SignUp",
          backwordArrow: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LoginScreen()),
              );
            },
            icon: const Icon(Icons.arrow_back),
          )),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius:  5,
                  blurRadius:  7,
                  offset: const Offset(0,  3),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: width,
                    height: height,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Full Name',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  const SizedBox(height:  10),

                  Container(
                    width: width,
                    height: height,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  const SizedBox(height:  10),

                  Container(
                    width: width,
                    height: height,
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),

                  const SizedBox(height:  20),

                  ElevatedButton(
                    onPressed: () {
                      // Handle signup logic here
                    },
                    child: const Text('SignUp'),
                  ),

                  const SizedBox(height:  20),

                  TextButton(
                    onPressed: () {
                      Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginScreen()),
                            );
                    },
                    child: const Text('Already have an account? Login'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}