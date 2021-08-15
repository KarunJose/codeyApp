import 'package:codey/constants/colors.dart';
import 'package:codey/constants/font.dart';
import 'package:codey/home/bannerimages.dart';
import 'package:flutter/material.dart';

class CouponPage extends StatelessWidget {
  const CouponPage({Key? key}) : super(key: key);

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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Coupon Code',
                      style: CodeyFont.textStyleRegular(Colors.black, 18),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.52,
                width: MediaQuery.of(context).size.width * 0.95,
                decoration: BoxDecoration(
                  color: appBgColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 12),
                          child: Image.asset(
                            'images/cs.png',
                            height: 90,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text(
                              'The Corner Stone',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 21),
                            ),
                            Text(
                              'Stationaries',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 13),
                            ),
                            Text(
                              '25% off selected items',
                              style:
                                  CodeyFont.textStyleRegular(Colors.white, 13),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Coupon Code',
                      style: CodeyFont.textStyleRegular(Colors.white, 18),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      'STANDARD 20',
                      style: CodeyFont.textStyleRegular(Colors.white, 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      minWidth: 200,
                      height: 50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      onPressed: () {},
                      color: Colors.white,
                      child: Text(
                        'Redeem Now',
                        style: CodeyFont.textStyleRegular(Colors.black, 18),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Valid Till - 20 May 2021',
                      style: CodeyFont.textStyleRegular(Colors.white, 18),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text(
                      'Explore More',
                      style: CodeyFont.textStyleRegular(Colors.black, 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset('images/video.png')],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset('images/locationnew.png')],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset('images/web.png')],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset('images/call.png')],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.14,
                        width: MediaQuery.of(context).size.width * 0.34,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [Image.asset('images/share.png')],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      'Special Offers',
                      style: CodeyFont.textStyleRegular(Colors.black, 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Text(
                      'View All',
                      style: CodeyFont.textStyleRegular(yButtonColor, 18),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              BannerImage()
            ],
          ),
        ),
      ),
    );
  }
}
