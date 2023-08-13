import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:login_signup/view/handbook1.view.dart';

class HandBook extends StatefulWidget {
  const HandBook({Key? key}) : super(key: key);

  @override
  _HandBookState createState() => _HandBookState();
}

class _HandBookState extends State<HandBook> {
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
          icon: Icon(Icons.arrow_back),
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
                SizedBox(height: 10),
                const Text(
                  'Hand Book',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
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
                SizedBox(height: 10),
                const Text(
                  'Time of the Day',
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
                      value: _selectedDay,
                      onChanged: (newValue) {
                        setState(() {
                          _selectedDay = newValue;
                        });
                      },
                      hint: const DefaultTextStyle(
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.grey,
                        ),
                        child: Text('Select Your DayTime'),
                      ),
                      items: <String>[
                        'Before Breakfast',
                        'Before Lunch',
                        'Before Dinner',
                      ].map((String Value) {
                        return DropdownMenuItem<String>(
                          value: Value,
                          child: Text(Value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                //box
                Container(
                  width: 900,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Records',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Glucose',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your glucose amount(mmol/L)',
                                  hintStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //next row breaking point
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Insulin Dosage',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your insulin amount',
                                  hintStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        //stopped
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Medicine',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter the pill names',
                                  hintStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 8),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'Carbs',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 250,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter the value(g)',
                                  hintStyle: TextStyle(fontSize: 10),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
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
                          MaterialPageRoute(builder: (context) => HandPage()));
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
