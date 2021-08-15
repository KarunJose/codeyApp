import 'package:codey/constants/font.dart';
import 'package:codey/profile/profile1.dart';
import 'package:codey/profile/profile2.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 2,
                  height: MediaQuery.of(context).size.height * 0.35,
                  decoration: BoxDecoration(
//color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'images/profile.png',
                            height: 125,
                          ),
                          Positioned(
                            right: -1,
                            bottom: -1,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Customer Name',
                        style: CodeyFont.textStyleRegular(Colors.black, 22),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Category',
                        style: CodeyFont.textStyleRegular(Colors.black, 18),
                      )
                    ],
                  ),
                ),
              ),
              ProfileSecondPart(),
              SizedBox(
                height: 30,
              ),
              ProfileThirdPart()
            ],
          ),
        ),
      ),
    );
  }
}
