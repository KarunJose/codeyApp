import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class CountryList extends StatefulWidget {
  // const CountryList({Key? key}) : super(key: key);

  @override
  _CountryListState createState() => _CountryListState();
}

class _CountryListState extends State<CountryList> {
  final countriesList = ['Dubai', 'Abu Dhabi', 'Sharjah', 'Ajman'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: countriesList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  Navigator.pop(context, countriesList[index]);
                },
                title: Text(
                  countriesList[index],
                  style: CodeyFont.textStyleRegular(Colors.black, 16),
                ),
              );
            }),
      ),
    );
  }
}
