import 'package:flutter/material.dart';
import '../json_model.dart';
import '../json_parser.dart';
import '../main.dart';

class ScreenView extends StatelessWidget {
  // final List<AndroidVerison> myDataList;
  final String myJsonData;
  final String appBarTitle;

  const ScreenView({super.key, required this.myJsonData, required this.appBarTitle});
  // : myDataList = parseJsonData(myJsonData);

  @override
  Widget build(BuildContext context) {
    final List<AndroidVerison> myDataList = parseJsonData(myJsonData);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title:  Text(appBarTitle),
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
