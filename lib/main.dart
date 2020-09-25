import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _initialized = false;
  bool _error = false;
  String _errorType;
  String fireStoreStatus;
  void initializeFlutterFire() async {
    try {
      await Firebase.initializeApp();
      setState(() {
        _initialized = true;
      });
    } catch(e) {
      setState(() {
        _error = true;
      });
    }
  }

  @override
  void initState() {
    initializeFlutterFire();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      FirebaseFirestore firestore = FirebaseFirestore.instance;
      CollectionReference users = firestore.collection("users");
      return users
          .add({
        'full_name': "fullName", // John Doe
        'company': "company", // Stokes and Sons
        'age': "age" // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    if(_error) {
      return Scaffold(
        body: Center(
            child: Text(
              'Error: $_errorType',
            )
        ),
      );
    }

    if(!_initialized) {
      return Scaffold(
        body: Center(
            child: Text(
              'Still loading',
            )
        ),
      );
    }

    return Scaffold(
      body: Center(
          child: FlatButton(
            onPressed: addUser,
            child: Text(
              "Add User",
            )
          )
      ),
    );


  }
}
