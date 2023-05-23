import 'package:flutter/material.dart';
import 'package:flutter_json_tasks/json_data.dart';
import 'package:flutter_json_tasks/screen/screen_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: myButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

Widget myButton(BuildContext context) => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red, // Set the background color to red
              foregroundColor: Colors.white, // Set the text color to white
            ),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                    builder: (context) => ScreenView(myJsonData: input_1)),
              );
            },
            child: const Text('Button 1')),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.green[700], // Set the background color to red
              foregroundColor: Colors.white, // Set the text color to white
            ),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => ScreenView(myJsonData: input_2)),
              );
            },
            child: const Text('Button2')),
      ],
    );
