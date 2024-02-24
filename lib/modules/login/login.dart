import 'package:black_box/modules/home/home.dart';
import 'package:black_box/backup/register/register.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

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
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            "assets/images/sc_assault.jpg",
                            width: 250,
                            height: 250,
                            fit: BoxFit.cover,
                          ),
                        ),

                        const SizedBox(height: 30,),

                        Container(
                          width: 500,
                          //height: ,
                          child: const TextField(
                            decoration: InputDecoration(
                              labelText: 'Email',
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email)
                            ),
                          ),
                        ),

                        const SizedBox(height:  10),

                        Container(
                          width: 500,
                          //height: ,
                          child: TextField(
                            obscureText: _obscureText,
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
                                )
                                ),
                          ),
                        ),

                        const SizedBox(height:  20),

                        Container(
                          width: 130,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()),
                              );
                            },
                            child: const Text('Login', style: TextStyle(color: Colors.black)),
                          ),
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