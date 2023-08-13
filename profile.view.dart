import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view/settings.view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String? _selectedType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 3),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                Center(
                  child: Column(
                    children: [
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage('assets/pose.jpg'),
                      ),
                      SizedBox(height: 5),
                      const Text(
                        'Personal Details',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      //
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Name',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),

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
                              hintText: 'Enter your Name',
                              hintStyle: TextStyle(fontSize: 10),
                            ),
                          ),
                        ),
                      ),
                      //
                      const SizedBox(height: 5),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Email',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),

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
                        hintText: 'Enter Your Email Address',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                //
                const SizedBox(height: 5),
                const Text(
                  'Telephone Number',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),

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
                        hintText: 'Enter the digits',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                // health information
                SizedBox(height: 5),
                const Text(
                  'Diabetics Type',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                SizedBox(height: 5),
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
                // age
                const SizedBox(height: 5),
                const Text(
                  'Health Information',
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),

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
                        hintText: 'Enter Your Last Name',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                //
                SizedBox(height: 50),
                //save  button
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8.0,
                      ),
                    ),
                    child: const Text("Save"),
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
