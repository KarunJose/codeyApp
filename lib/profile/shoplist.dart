import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/profile/allshops.dart';
import 'package:flutter/material.dart';

class ShopList extends StatefulWidget {
  @override
  _ShopListState createState() => _ShopListState();
}

class _ShopListState extends State<ShopList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBarColor,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: TextField(
                          style: TextStyle(decoration: TextDecoration.none),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.search,
                              size: 30,
                              color: Colors.grey[700],
                            ),
                            hintText: 'Search...',
                            hintStyle:
                                CodeyFont.textStyleRegular(Colors.grey, 15),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.07,
                    width: MediaQuery.of(context).size.width * 0.17,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        'images/filter.png',
                        height: 22,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Row(
                  children: [
                    Text(
                      'All Shops',
                      style: CodeyFont.textStyleRegular(Colors.black, 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              AllShops()
            ],
          ),
        ),
      ),
    );
  }
}
