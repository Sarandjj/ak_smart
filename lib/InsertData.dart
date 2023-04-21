// ignore_for_file: file_names, unused_import, prefer_typing_uninitialized_variables, unused_label, avoid_unnecessary_containers, duplicate_ignore, unnecessary_new

import 'package:ak_smart/Booking/Book_3.dart';
import 'package:ak_smart/Booking/Book_4.dart';
import 'package:ak_smart/Booking/Book_5.dart';
import 'package:ak_smart/Booking/Book_6.dart';
import 'package:ak_smart/auth/login_page.dart';
import 'package:ak_smart/service/auth_service.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'package:ak_smart/auth/login_page.dart';
// import 'package:firebase_database/firebase_database.dart';
 import 'package:firebase_database/ui/firebase_animated_list.dart';
 import 'package:flutter/material.dart';
// import 'package:ak_smart/helper/helper_function.dart';
// import 'package:ak_smart/service/auth_service.dart';
// // import 'Book_1.dart';
import 'Booking/Book_1.dart';
import 'Booking/Book_2.dart';

class InsertData extends StatefulWidget {
  const InsertData({Key? key}) : super(key: key);

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  final ref = FirebaseDatabase.instance.ref('Slot1');
  AuthService authService = AuthService();
  var sl1;
  var sl2;
  var sl3;
  var sl4;
  var sl5;
  var sl6;
  var v1;
  var v2;
  var v3;
  var v4;
  var v5;
  var v6;

  var s3;
  @override
  void initState() {
    super.initState();
    _activateListenrs1();
    _activateListenrs2();
    _activateListenrs3();
    _activateListenrs4();
    _activateListenrs5();
    _activateListenrs6();
  }

  void _activateListenrs1() {
    query:
    ref;
    ref.child('IR1').onValue.listen((event) {
      final ir1 = (event.snapshot.value);
      setState(() {
        sl1 = ir1;
      });
    });
  }

  void _activateListenrs2() {
    query:
    ref;
    ref.child('IR2').onValue.listen((event) {
      final ir2 = (event.snapshot.value);
      setState(() {
        sl2 = ir2;
      });
    });
  }

  void _activateListenrs3() {
    query:
    ref;
    ref.child('IR3').onValue.listen((event) {
      final ir3 = (event.snapshot.value);
      setState(() {
        sl3 = ir3;
      });
    });
  }

  void _activateListenrs4() {
    query:
    ref;
    ref.child('IR4').onValue.listen((event) {
      final ir4 = (event.snapshot.value);
      setState(() {
        sl4 = ir4;
      });
    });
  }

  void _activateListenrs5() {
    query:
    ref;
    ref.child('IR5').onValue.listen((event) {
      final ir5 = (event.snapshot.value);
      setState(() {
        sl5 = ir5;
      });
    });
  }

  void _activateListenrs6() {
    query:
    ref;
    ref.child('IR6').onValue.listen((event) {
      final ir6 = (event.snapshot.value);
      setState(() {
        sl6 = ir6;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Color getColor1() {
      if (sl1 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    Color getColor2() {
      if (sl2 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    Color getColor3() {
      if (sl3 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    Color getColor4() {
      if (sl4 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    Color getColor5() {
      if (sl5 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    Color getColor6() {
      if (sl6 == 0) {
        return const Color.fromARGB(200, 200, 55, 22);
      } else {
        return const Color.fromRGBO(0, 200, 33, 2);
      }
    }

    if (sl1 == 0) {
      // var n1 = "Not Available";
      setState(() {
        v1 = "Not Available";
      });
      //v3 = v1;
    } else {
      //var j1 = " Available";
      setState(() {
        v1 = " Available";
      });
    }
    if (sl2 == 0) {
      //var v1 = "Not Available";
      setState(() {
        v2 = "Not Available";
      });
    } else {
      //var j1 = "Available";
      setState(() {
        v2 = " Available";
      });
    }
    if (sl3 == 0) {
      //var v1 = "Not Available";
      setState(() {
        v3 = "Not Available";
      });
      //v3 = v1;
    } else {
      //var j1 = " Available";
      setState(() {
        v3 = " Available";
      });
    }
    if (sl4 == 0) {
      //var v1 = "Not Available";
      setState(() {
        v4 = "Not Available";
      });
      //v3 = v1;
    } else {
      //var j1 = " Available";
      setState(() {
        v4 = " Available";
      });
    }
    if (sl5 == 0) {
      //var v1 = "Not Available";
      setState(() {
        v5 = "Not Available";
      });
      //v3 = v1;
    } else {
      //var j1 = " Available";
      setState(() {
        v5 = " Available";
      });
    }
    if (sl6 == 0) {
      //var v1 = "Not Available";
      setState(() {
        v6 = "Not Available";
      });
      //v3 = v1;
    } else {
      //var j1 = " Available";
      setState(() {
        v6 = " Available";
      });
    }
    if (sl2 == 0 && sl1 == 0 && sl3 == 0 && sl4 == 0 && sl5 == 0 && sl6 == 0) {
      var s1 = "Parking Area is filled";
      setState(() {
        s3 = s1;
      });
    } else {
      var s2 = "Parking Area is Available";
      setState(() {
        s3 = s2;
      });
    }

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "aK_SmaRt",
          style: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(223, 8, 1, 7),
              fontFamily: 'ConcertOne'),
        ),
        backgroundColor: const Color.fromARGB(254, 209, 135, 23),
        actions: [
          IconButton(
              onPressed: () async {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text("Logout"),
                        content: const Text("Are you sure you want to logout?"),
                        actions: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.cancel,
                              color: Colors.red,
                            ),
                          ),
                          IconButton(
                            onPressed: () async {
                              await authService.signOut();
                              // ignore: use_build_context_synchronously
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                  (route) => false);
                            },
                            icon: const Icon(
                              Icons.done,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      );
                    });
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 2, 23, 38),
      body: Column(
        children: [
          Row(
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(76, 30, 10, 10),
                  child: Text(
                    "Parking Slots",
                    style: TextStyle(
                        fontSize: 36,
                        color: Colors.white,
                        fontFamily: 'ConcertOne'),
                  ),
                ),
              ),
            ],
          ),
          Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(47, 50, 10, 50),
                child: Align(
                  //alignment: const Alignment(1, -0.5),
                  //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        if (sl1 == 1) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const CarSlotsBookingPage1()),
                              (route) => true);
                        }
                        // Handle the tap event
                       
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: getColor1(),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          child: new Center(
                            child: new Text(
                              "Slot 1:      $v1",
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 50, 10, 50),
                child: Align(
                  // alignment: const Alignment(1, -0.5),
                  //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        if (sl2 == 1) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const CarSlotsBookingPage2()),
                              (route) => true);
                        }
                        // Handle the tap event
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: getColor2(),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          child: new Center(
                            child: new Text(
                              "Slot 2:      $v2",
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(47, 10, 10, 50),
                  child: Align(
                    //alignment: const Alignment(1, -0.5),
                    //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                    child: Container(
                      height: 100.0,
                      width: 120.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        onTap: () {
                          if (sl3 == 1) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CarSlotsBookingPage3()),
                                (route) => true);
                          }
                          // Handle the tap event
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: getColor3(),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0))),
                            child: new Center(
                              child: new Text(
                                "Slot 3:      $v3",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36, 10, 10, 50),
                  child: Align(
                    // alignment: const Alignment(1, -0.5),
                    //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                    child: Container(
                      height: 100.0,
                      width: 120.0,
                      color: Colors.transparent,
                      child: GestureDetector(
                        onTap: () {
                          if (sl4 == 1) {
                            Navigator.of(context).pushAndRemoveUntil(
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const CarSlotsBookingPage4()),
                                (route) => true);
                          }
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: getColor4(),
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(10.0))),
                            child: new Center(
                              child: new Text(
                                "Slot 4:      $v4",
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                                textAlign: TextAlign.center,
                              ),
                            )),
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
          Container(
            child: Row(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(47, 0, 10, 50),
                child: Align(
                  //alignment: const Alignment(1, -0.5),
                  //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        if (sl5 == 1) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const CarSlotsBookingPage5()),
                              (route) => true);
                        }

                        // Handle the tap event
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: getColor5(),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          child: new Center(
                            child: new Text(
                              "Slot 5:      $v5",
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(36, 0, 10, 50),
                child: Align(
                  // alignment: const Alignment(1, -0.5),
                  //padding: const EdgeInsets.fromLTRB(30,0, 20,550),
                  child: Container(
                    height: 100.0,
                    width: 120.0,
                    color: Colors.transparent,
                    child: GestureDetector(
                      onTap: () {
                        if (sl6 == 1) {
                          Navigator.of(context).pushAndRemoveUntil(
                              MaterialPageRoute(
                                  builder: (context) => const CarSlotsBookingPage6()),
                              (route) => true);
                        }
                        // Handle the tap event
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color: getColor6(),
                              borderRadius: const BorderRadius.all(
                                  Radius.circular(10.0))),
                          child: new Center(
                            child: new Text(
                              "Slot 6:      $v6",
                              style: const TextStyle(
                                  fontSize: 22, color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                          )),
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Container(
              child: Text(
                "$s3",
                style: const TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontFamily: 'ConcertOne'),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
