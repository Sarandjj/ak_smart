// ignore_for_file: file_names, unused_import, depend_on_referenced_packages, library_private_types_in_public_api, unused_field, avoid_print, prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import '../slac.dart';
import '../InsertData.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart'
    as cupertino;
import 'package:intl/intl.dart';

//import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart' as datetime;
class CarSlotsBookingPage5 extends StatefulWidget {
  const CarSlotsBookingPage5({super.key});

  //final va;

  @override
  _CarSlotsBookingPage5State createState() => _CarSlotsBookingPage5State();
}

class _CarSlotsBookingPage5State extends State<CarSlotsBookingPage5> {
  final ref = FirebaseDatabase.instance.ref('Slot1');
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _dateController = TextEditingController();
  final _carNumberPlateController = TextEditingController();
  final _emailController = TextEditingController();
  DateTime _selectedDate = DateTime.now();
  final TextEditingController _timeController = TextEditingController();
  //DateTime _selectedTime = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _dateController.dispose();
    _timeController.dispose();
    _carNumberPlateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
        centerTitle: true,
        title: const Text('Car Slots Booking Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.fromLTRB(90, 10, 0, 0),
                      child: Text(
                        'Parking Slot No :  5',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(229, 241, 62, 62)),
                      ),
                    ),
                    //Text(widget.va),
                  ],
                ),
                TextFormField(
                  controller: _nameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                TextFormField(
                  controller: _emailController,

                  // check tha validation
                  validator: (value) {
                    return RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value!)
                        ? null
                        : "Please enter a valid email";
                  },
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                const SizedBox(height: 10),
                TextFormField(
                  controller: _phoneController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length != 10) {
                      return 'Phone number must be exactly 10 digits';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Phone Number',
                    hintText: 'Enter 10-digit phone number', // Add helpful hint
                  ),
                  maxLength: 10, // Set max length
                  keyboardType: TextInputType.phone, // Set keyboard type
                ),
                TextFormField(
                  controller: _carNumberPlateController,
                  inputFormatters: [
                    IndianCarNumberPlateFormatter(),
                  ],
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your car number plate';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    labelText: 'Car Number Plate',
                    hintText: 'Enter your car number plate',
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    cupertino.DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime.now(),
                      maxTime: DateTime(2050, 12, 31),
                      onChanged: (date) {
                        print('change $date');
                      },
                      onConfirm: (date) {
                        setState(() {
                          _selectedDate = date;
                          _dateController.text =
                              DateFormat('dd/MM/yyyy').format(date);
                        });
                      },
                      currentTime: DateTime.now(),
                      locale: LocaleType.en,
                    );
                  },
                  child: IgnorePointer(
                    child: TextFormField(
                      controller: _dateController,
                       validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the date ';
                    }
                    return null;
                  },
                      decoration: const InputDecoration(
                        labelText: 'Date (DD/MM/YYYY)',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                InkWell(
                  onTap: () {
                    showTimePicker(
                      context: context,
                      initialTime: _selectedTime,
                      builder: (BuildContext context, Widget? child) {
                        return MediaQuery(
                          data: MediaQuery.of(context)
                              .copyWith(alwaysUse24HourFormat: false),
                          child: child!,
                        );
                      },
                    ).then((selectedTime) {
                      if (selectedTime != null) {
                        DateTime now = DateTime.now();
                        DateTime selectedDateTime = DateTime(
                            now.year,
                            now.month,
                            now.day,
                            selectedTime.hour,
                            selectedTime.minute);
                        if (selectedDateTime.isBefore(now)) {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: const Text('Invalid Time'),
                                content:
                                    const Text('Please select a time in the future.'),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                          selectedTime =
                              TimeOfDay(hour: now.hour, minute: now.minute);
                        }
                        setState(() {
                          _selectedTime = selectedTime!;
                          _timeController.text = _selectedTime.format(context);
                        });
                      }
                    });
                  },
                  child: IgnorePointer(
                    child: TextFormField(
                      controller: _timeController,
                       validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter the date ';
                    }
                    return null;
                  },
                      decoration: const InputDecoration(
                        labelText: 'Time (HH:MM AM/PM)',
                      ),
                    ),
                  ),
                ),

                // Padding(
                //   padding: const EdgeInsets.all(10.0),
                //   child: Center(
                //       child: Text(
                //     "Amount:100",
                //     style: TextStyle(fontSize: 25),
                //   )),
                // ),
                const SizedBox(height: 16.0),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        //   //   // Save the booking information to Firestore
                        FirebaseFirestore.instance.collection('bookings').add({
                          'name': _nameController.text,
                          'email': _emailController.text,
                          'phone': _phoneController.text,
                          'Carnumber Plate': _carNumberPlateController.text,
                          'date': _dateController.text,
                          'time': _timeController.text,
                          'slot': 3,
                        });

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MySplashScreen()),
                        );

                        // Show a success message and clear the form
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Booking successful')),
                        );
                        _nameController.clear();
                        _emailController.clear();
                        _phoneController.clear();
                        _dateController.clear();
                        _timeController.clear();
                        ref.update({
                          "IR5": 0,
                        });
                      }
                    },
                    child: const Text('Book Now'),
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

class IndianCarNumberPlateFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Convert input to uppercase
    String text = newValue.text.toUpperCase();

    // Add space after every 4 characters
    if (text.length > 4 && text[4] != ' ') {
      text = text.substring(0, 4) + ' ' + text.substring(4);
    }

    // Limit to 13 characters
    if (text.length > 13) {
      text = text.substring(0, 13);
    }

    // Return new TextEditingValue with formatted text
    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}
