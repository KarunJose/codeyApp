import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/homepage.dart';
import 'package:codey/registration/countrylist.dart';
import 'package:codey/widgets/bottomnavigation.dart';
import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  var textName = "Select Your Country";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset(
                    'images/location.png',
                    height: 280,
                    width: 300,
                  ),
                  Text(
                    'Choose your Country',
                    style: CodeyFont.textStyleRegular(Colors.white, 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Choose your Country to start find the',
                    style: CodeyFont.textStyleRegular(Colors.white, 15),
                  ),
                  Text(
                    'Offers Near You.',
                    style: CodeyFont.textStyleRegular(Colors.white, 15),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    color: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () async {
                      String country = await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CountryList()));
                      setState(() {
                        textName = country;
                      });
                    },
                    child: Text(
                      textName,
                      style: CodeyFont.textStyleRegular(Colors.white, 15),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigation()));
                    },
                    child: Text(
                      'Skip for now',
                      style: CodeyFont.textStyleRegular(Colors.white, 17),
                    ),
                  ),
                  MaterialButton(
                    height: 60,
                    minWidth: MediaQuery.of(context).size.width * 0.7,
                    color: buttonColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BottomNavigation()));
                    },
                    child: Text(
                      'Proceed',
                      style: CodeyFont.textStyleRegular(Colors.white, 15),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
