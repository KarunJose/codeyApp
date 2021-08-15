import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/profile/profile.dart';
import 'package:codey/registration/confirmation.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  @override
  _DrawerPageState createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      "images/profile.png",
                      height: 60,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Customer Name',
                          style: CodeyFont.textStyleRegular(Colors.white, 16),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Location',
                          style: CodeyFont.textStyleRegular(Colors.white, 12),
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    padding: EdgeInsets.all(0),
                    alignment: Alignment.centerRight,
                    //color: blackColor,
                    icon: Icon(Icons.arrow_forward_ios),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: appBgColor,
            ),
          ),
          ListTile(
            title: Text(
              'Profile',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.person_outline,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
          ),
          ListTile(
            title: Text(
              'Category',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.category_outlined,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'My Favourite',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.stars_outlined,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Settings',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.settings_outlined,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Customer Service',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.headset_mic_outlined,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Country',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.flag_outlined,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              'Logout',
              style: CodeyFont.textStyleRegular(Colors.black, 16),
            ),
            leading: Icon(
              Icons.power_settings_new,
              size: 30,
            ),
            onTap: () {
              Navigator.pop(context);
              showLogOutPopUp();
            },
          ),
        ],
      ),
    );
  }

  void showLogOutPopUp() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
              elevation: 4,
              contentPadding: EdgeInsets.all(25),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5)),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.power_settings_new_outlined,
                    color: yButtonColor,
                  ),
                  new Text(
                    'LOGOUT',
                    textAlign: TextAlign.center,
                    style: CodeyFont.textStyleRegular(Colors.black, 18),
                  ),
                ],
              ),
              content: new Text(
                'Are you sure?',
                textAlign: TextAlign.center,
                style: CodeyFont.textStyleRegular(Colors.black, 16),
              ),
              actions: <Widget>[
                Container(
                  //width: 200,
                  margin: EdgeInsets.only(right: 128),
                  child: Row(children: <Widget>[
                    FlatButton(
                      color: yButtonColor,
                      child: Text(
                        'NO',
                        style: CodeyFont.textStyleRegular(Colors.white, 16),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ]),
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      FlatButton(
                        color: Colors.black,
                        child: Text(
                          'YES',
                          style: CodeyFont.textStyleRegular(Colors.white, 16),
                        ),
                        //borderSide: BorderSide(color: appThemeColor),
                        onPressed: () {
                          Navigator.of(context).pop();
                          // AccountDetails.resetUserAuthDetails(
                          //     _sharedPreferences);
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      new ConfirmationPage()));
                        },
                      ),
                    ],
                  ),
                )
              ]);
        });
  }
}
