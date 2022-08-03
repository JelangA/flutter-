// ignore_for_file: prefer_const_constructors

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp1/view/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //login page where you can login with your credentials
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //icon for the app
              Icon(
                Icons.account_circle,
                size: 150,
                color: Colors.blue,
              ),

              //hello again
              Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Please login to continue',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),

              //email field
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                      )
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              //password field
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'password',
                      )
                    ),
                  ),
                ),

              ),
              SizedBox(height: 20),

              //login button
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12),  
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

              RichText(
            text: TextSpan(children: [
              TextSpan(
                text: 'Belum Daftar? ',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextSpan(
                  text: 'Register',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                     //get register page into object
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => register()),
                      );

                    }),
            ]),
          ),

              //not a member? sign up button
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   // ignore: prefer_const_literals_to_create_immutables
              //   children: [
              //     Text(
              //       'Not a member?',
              //       style: TextStyle(
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //     Text( 
              //       'Register now',
              //       style: TextStyle(
              //         color: Colors.blue,
              //         fontWeight: FontWeight.bold,
              //       ),
              //     ),
              //   ],
              // ),


            ],
          ),
        )
      )
    );
  } 
}
