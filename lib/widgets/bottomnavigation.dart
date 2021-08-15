import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/celebcategory.dart';
import 'package:codey/home/homepage.dart';
import 'package:codey/profile/profile.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  Widget _navOptions(int _currentIndex) {
    switch (_currentIndex) {
      case 0:
        return HomePage();
      case 1:
        return CelebCategory();
      // case 2:
      //   return ProfilePage();
      case 3:
        return ProfilePage();

        break;
      default:
        return HomePage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Navigator.push(
      //         context, MaterialPageRoute(builder: (context) => CreateTicket()));
      //   },
      //   child: Icon(Icons.add),
      //   //backgroundColor: appThemeColor,
      // ),
      body: _navOptions(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appBgColor,
        selectedItemColor: yButtonColor,
        selectedLabelStyle: CodeyFont.textStyleRegular(yButtonColor, 15),
        showUnselectedLabels: false,
        unselectedItemColor: Colors.grey,

        //selectedIconTheme: ,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              label: 'Home',
              icon: _selectedIndex == 0
                  ? Icon(
                      Icons.home_filled,
                    )
                  : Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
            label: 'Celebrity',
            icon: _selectedIndex == 1
                ? Icon(Icons.category)
                : Icon(
                    Icons.category_outlined,
                  ),
          ),
          BottomNavigationBarItem(
            label: 'Settings',
            icon: _selectedIndex == 2
                ? Icon(Icons.settings)
                : Icon(
                    Icons.settings_outlined,
                  ),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: _selectedIndex == 3
                ? Icon(Icons.person)
                : Icon(Icons.person_outline),
          )
        ],
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
