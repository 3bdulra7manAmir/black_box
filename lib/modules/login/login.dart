// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers, avoid_print

import 'package:black_box/models/login_checker.dart';
import 'package:black_box/utils/button.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

final userController = TextEditingController();
final passwordController = TextEditingController();

bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey,

        // appBar: defaultAppBar(
        //   appBarTitle: "Login",
        //   //appbarColor: Specs().cGray_400
        //   ),

        body: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
        image: AssetImage("assets/images/background.jpg"), // Replace with your image path
        fit: BoxFit.cover,
      ),
          ),

          child: Center(
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
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    width: 700,
                    height: 515,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              "assets/images/sc_assault.jpg",
                              width: 250,
                              height: 250,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 30,),
                        Container(
                          width: 500,
                          //height: ,
                          child: TextField(
                            controller: userController,
                            keyboardType: TextInputType.text,
                            decoration: const InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.castle)
                            ),
                          ),
                        ),
                        const SizedBox(height:  10),
                        Container(
                          width: 500,
                          //height: ,
                          child: TextField(
                            obscureText: _obscureText,
                            controller: passwordController,
                            keyboardType: TextInputType.none,
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: const OutlineInputBorder(),
                                prefixIcon: const Icon(Icons.password_rounded),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _obscureText = !_obscureText;
                                    });
                                  },
                                )),
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 130,
                          child: defaultButton(btnText: "Login", btnFunction: (){
                            String user = userController.text;
                            String password = passwordController.text;
                            LoginChecker(context: context).checker(user, password);
                          })
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}