// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_signup/view/forgotpassword.view.dart';
import 'package:login_signup/view/home.view.dart';
import 'package:login_signup/view/signup.view.dart';
import 'package:login_signup/view/welcome.view.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.jpg',
                    height: 187,
                    width: 187,
                  ),
                ),

                SizedBox(height: 35),

                ///Hello again!
                // ignore: prefer_const_constructors

                Text(
                  'Hey, Welcome Back!',
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  'Hello again, You have been missed.',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  'Email Address',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10),
                //email textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 7,
                        )
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Email Address',
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(height: 10),
                //password textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(6),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 7,
                        )
                      ],
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Password',
                        hintStyle: TextStyle(fontSize: 12),
                      ),
                    ),
                  ),
                ),
                //check box
                Expanded(
                  child: Row(
                    children: [
                      Checkbox(
                        value:
                            false, // Replace with a variable to hold the checkbox state
                        onChanged: (value) {
                          // Handle checkbox state change
                        },
                      ),
                      Text(
                        'Keep me signed in',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      Flexible(
                        child: Container(),
                      ), // add an empty Flexible widget
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //
                SizedBox(height: 50),
                //sign in button
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8.0,
                      ),
                    ),
                    child: const Text("Log In"),
                  ),
                ),
                SizedBox(height: 25),
                //not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      'No account?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: Text(
                        'Signup',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
