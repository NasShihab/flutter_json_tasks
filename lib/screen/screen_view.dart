import 'package:flutter/material.dart';
import '../json_model.dart';
import '../json_parser.dart';
import '../main.dart';

class ScreenView extends StatelessWidget {
  final List<AndroidVerison> myDataList;
  final String myJsonData;

  ScreenView({super.key, required this.myJsonData})
      : myDataList = parseJsonData(myJsonData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Data'),
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemCount: myDataList.length,
          itemBuilder: (context, index) {
            return Center(
              child: Text(
                myDataList[index].title.toString(),
                style: const TextStyle(fontSize: 18),
              ),
            );
          },
        ),
      ),
      floatingActionButton: myButton(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
