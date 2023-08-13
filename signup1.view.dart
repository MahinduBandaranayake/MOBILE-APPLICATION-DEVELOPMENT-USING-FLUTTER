import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view/home.view.dart';
import 'package:flutter/cupertino.dart';

class SignPage extends StatefulWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  String? _selectedGender;
  String? _selectedBlood;
  String? _selectedType;

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
                SizedBox(height: 10),
                const Text(
                  'Create Account',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                const Text(
                  'Enter Your Health Information',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 10),
                const Text(
                  'Your Age',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //age textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Age',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Your Weight (kg)',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //weight textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter Your Weight in kg',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Gender',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //gender textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: DropdownButton<String>(
                      value: _selectedGender,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedGender = newValue;
                        });
                      },
                      hint: const DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        child: Text('Select Your Gender'),
                      ),
                      items: <String>[
                        'Male',
                        'Female',
                      ].map((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Blood Group',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //gender textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: DropdownButton<String>(
                      value: _selectedBlood,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedBlood = newValue;
                        });
                      },
                      hint: const DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        child: Text('Select Your Blood Group'),
                      ),
                      items: <String>[
                        'Group A',
                        'Group B',
                        'Group AB',
                        'Group O',
                      ].map((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Diabetics Type',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //gender textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: DropdownButton<String>(
                      value: _selectedType,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedType = newValue;
                        });
                      },
                      hint: const DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        child: Text('Select Your Diabetics Type'),
                      ),
                      items: <String>[
                        'Type 1 Diabetes',
                        'Type 2 Diabetes',
                        'Gestational Diabetes',
                      ].map((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Text(
                  'Do You Do Regular Checkups?',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 10),
                //phonenumber textfield
                Padding(
                  padding: const EdgeInsets.only(top: 3),
                  child: Container(
                    height: 50,
                    width: 900,
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
                    child: const TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Type your Answer',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                ),
                SizedBox(height: 10),
                //next button
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
                    child: const Text("Sign Up"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
