import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view/calender.view.dart';
import 'package:login_signup/view/food.view.dart';
import 'package:login_signup/view/handbook.view.dart';
import 'package:login_signup/view/profile.view.dart';
import 'package:login_signup/view/settings.view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the current time
    final currentTime = TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(height: 8),
          // Profile picture, name, and greeting
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('assets/pose_8.png'),
              ),
              const SizedBox(width: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Wasana Thennakoon',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    currentTime.hour < 12 ? 'Good Morning' : 'Good Afternoon',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Buttons
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HandBook()));
                    },
                    icon: const Icon(Icons.book),
                    label: const Text('HandBook'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FoodPage()));
                    },
                    icon: const Icon(Icons.food_bank),
                    label: const Text('Food'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.stacked_bar_chart),
                    label: const Text('Myaverage'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CalenderPage()));
                    },
                    icon: const Icon(Icons.calendar_today),
                    label: const Text('Calendar'),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SettingPage()));
                    },
                    icon: const Icon(Icons.stacked_bar_chart),
                    label: const Text('Setting'),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfilePage()));
                    },
                    icon: const Icon(Icons.calendar_today),
                    label: const Text('Profile'),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          // About Diabetics button
          TextButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.info),
            label: const Text('More Information'),
            style: TextButton.styleFrom(alignment: Alignment.centerLeft),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/pose_6.jpg',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Expanded(
                  child: Column(
                    children: [
                      const SizedBox(height: 8),
                      const Center(
                        child: Text(
                          ' About Diabetes',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [
                            const SizedBox(height: 8),
                            const Text(
                              'With diabetes, your body doesn’t make enough insulin or can’t use it as well as it should. When there isn’t enough insulin or cells stop responding to insulin too much blood sugar stays in your bloodstream',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                // Handle button press
                              },
                              child: const Text("Let's Go"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 8),

// Text widget for "My Average"
          // ignore: prefer_const_constructors
          Text(
            'My Average',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(5),
            ),
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // add your image here
                Image.asset(
                  'assets/pose.jpg',
                  width: 40,
                  height: 40,
                  // adjust the width and height to your needs
                ),
                const SizedBox(width: 10),
                const Text(
                  'My Average',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
