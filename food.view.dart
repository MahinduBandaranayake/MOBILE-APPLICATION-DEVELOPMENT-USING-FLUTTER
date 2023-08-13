import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/view/food1.view.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({Key? key}) : super(key: key);

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  String? _selectedTime;
  String? _selectedDay;
  DateTime? _selectedDate;
  final TextEditingController _dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
          color: Colors.black,
        ),
      ),
      body: SafeArea(
        child: Center(
          // ignore: prefer_const_literals_to_create_immutables
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Food Entry',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                //date
                const SizedBox(height: 10),
                const Text(
                  'Date',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 13,
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    hintText: 'Select the Date',
                    hintStyle: TextStyle(fontSize: 10),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.calendar_today),
                      onPressed: () async {
                        final DateTime? date = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2025),
                        );
                        if (date != null) {
                          setState(() {
                            _selectedDate = date;
                            _dateController.text =
                                '${date.day}/${date.month}/${date.year}';
                          });
                        }
                      },
                    ),
                  ),
                ),
                //time
                const SizedBox(height: 10),
                const Text(
                  'Time',
                  textAlign: TextAlign.left,
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
                    child: DropdownButton<String>(
                      value: _selectedTime,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedTime = newValue;
                        });
                      },
                      hint: const Text(
                        'Select the Time',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                      ),
                      items: <String>[
                        '9:00 AM',
                        '10:00 AM',
                        '11:00 AM',
                        '12:00 PM',
                        '1:00 PM',
                        '2:00 PM',
                        '3:00 PM',
                        '4:00 PM',
                        '5:00 PM',
                        '6:00 PM',
                        '7:00 PM',
                        '8:00 PM',
                        '9:00 PM',
                        '10:00 PM',
                        '11:00 PM',
                        '12:00 AM'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                //food types
                const SizedBox(height: 10),
                const Text(
                  'Food Types',
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
                        hintText: 'Enter Consumed Food Types',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                //quantity
                const SizedBox(height: 10),
                const Text(
                  'Quantity',
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
                        hintText: 'Enter the value',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                //total calories
                const SizedBox(height: 10),
                const Text(
                  'Total Calories',
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
                        hintText: 'Enter Your Value',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),
                //water amount
                const SizedBox(height: 10),
                const Text(
                  'Water Amount',
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
                        hintText: 'Enter the Amount in ml',
                        hintStyle: TextStyle(fontSize: 10),
                      ),
                    ),
                  ),
                ),

                Container(
                  alignment: Alignment.center,
                ),
                SizedBox(height: 20),
                //next button
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FoodView()));
                    },
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: const StadiumBorder(),
                      padding: const EdgeInsets.symmetric(
                        vertical: 15,
                        horizontal: 8.0,
                      ),
                    ),
                    child: const Text("Add"),
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
