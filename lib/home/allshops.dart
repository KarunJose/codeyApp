import 'package:codey/constants/font.dart';
import 'package:codey/home/couponpage.dart';
import 'package:flutter/material.dart';

class HomeAllShops extends StatefulWidget {
  @override
  _HomeAllShopsState createState() => _HomeAllShopsState();
}

class _HomeAllShopsState extends State<HomeAllShops> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'All Shops',
                style: CodeyFont.textStyleRegular(Colors.black, 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 110,
                child: Image.asset(
                  'images/shop-2.png',
                  width: 95,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'The Corner Store',
                      style: CodeyFont.textStyleRegular(Colors.black, 16),
                    ),
                    Text(
                      'Stationaries',
                      style: CodeyFont.textStyleRegular(Colors.grey, 12),
                    ),
                    Text(
                      '25% off selected items',
                      style: CodeyFont.textStyleRegular(Colors.orange, 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: MaterialButton(
                  color: Color(0xffD9BC6C),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CouponPage()));
                    //Navigator.pop(context);
                    //showPopUp();
                  },
                  child: Text(
                    'Get Code',
                    style: CodeyFont.textStyleRegular(Colors.white, 12),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
          style: TextStyle(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 110,
                child: Image.asset(
                  'images/coffeeness.png',
                  width: 95,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Coffeeness, Al..',
                      style: CodeyFont.textStyleRegular(Colors.black, 16),
                    ),
                    Text(
                      'Coffee, Tea, Snacks',
                      style: CodeyFont.textStyleRegular(Colors.grey, 12),
                    ),
                    Text(
                      '35% off selected items',
                      style: CodeyFont.textStyleRegular(Colors.orange, 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: MaterialButton(
                  color: Color(0xffD9BC6C),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CouponPage()));
                  },
                  child: Text(
                    'Get Code',
                    style: CodeyFont.textStyleRegular(Colors.white, 12),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ',
          style: TextStyle(color: Colors.grey),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                height: 110,
                child: Image.asset(
                  'images/db.png',
                  width: 95,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                child: Column(
                  children: [
                    Text(
                      'Decorma Boutiq..',
                      style: CodeyFont.textStyleRegular(Colors.black, 16),
                    ),
                    Text(
                      'Makeup, Clothing',
                      style: CodeyFont.textStyleRegular(Colors.grey, 12),
                    ),
                    Text(
                      '45% off selected items',
                      style: CodeyFont.textStyleRegular(Colors.orange, 13),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                child: MaterialButton(
                  color: Color(0xffD9BC6C),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CouponPage()));
                  },
                  child: Text(
                    'Get Code',
                    style: CodeyFont.textStyleRegular(Colors.white, 12),
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }

  // void showPopUp() {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AlertDialog(
  //           backgroundColor: Color(0xff231F20),
  //           content: Stack(
  //             // ignore: deprecated_member_use
  //             overflow: Overflow.visible,
  //             children: [
  //               Positioned(
  //                 right: -10.0,
  //                 top: -10,
  //                 child: InkResponse(
  //                   onTap: () {
  //                     Navigator.of(context).pop();
  //                   },
  //                   child: Icon(
  //                     Icons.close,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //               ),
  //               Column(
  //                 mainAxisSize: MainAxisSize.min,
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   SizedBox(
  //                     height: 15,
  //                   ),
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: [
  //                       Column(
  //                         children: [
  //                           Container(
  //                             width: 50,
  //                             height: 50,
  //                             decoration: BoxDecoration(
  //                               color: Colors.black,
  //                               shape: BoxShape.circle,
  //                             ),
  //                             child: Center(
  //                               child: Text(
  //                                 '13',
  //                                 style: CodeyFont.textStyleRegular(
  //                                     Colors.white, 14),
  //                               ),
  //                             ),
  //                           ),
  //                           Text(
  //                             'DAYS',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 11),
  //                           )
  //                         ],
  //                       ),
  //                       Column(
  //                         children: [
  //                           Container(
  //                             width: 50,
  //                             height: 50,
  //                             decoration: BoxDecoration(
  //                               color: Colors.black,
  //                               shape: BoxShape.circle,
  //                             ),
  //                             child: Center(
  //                               child: Text(
  //                                 '09',
  //                                 style: CodeyFont.textStyleRegular(
  //                                     Colors.white, 14),
  //                               ),
  //                             ),
  //                           ),
  //                           Text(
  //                             'HOUR',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 11),
  //                           )
  //                         ],
  //                       ),
  //                       Column(
  //                         children: [
  //                           Container(
  //                             width: 50,
  //                             height: 50,
  //                             decoration: BoxDecoration(
  //                               color: Colors.black,
  //                               shape: BoxShape.circle,
  //                             ),
  //                             child: Center(
  //                               child: Text(
  //                                 '27',
  //                                 style: CodeyFont.textStyleRegular(
  //                                     Colors.white, 14),
  //                               ),
  //                             ),
  //                           ),
  //                           Text(
  //                             'MINUTE',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 11),
  //                           )
  //                         ],
  //                       ),
  //                       Column(
  //                         children: [
  //                           Container(
  //                             width: 50,
  //                             height: 50,
  //                             decoration: BoxDecoration(
  //                               color: Colors.black,
  //                               shape: BoxShape.circle,
  //                             ),
  //                             child: Center(
  //                               child: Text(
  //                                 '41',
  //                                 style: CodeyFont.textStyleRegular(
  //                                     Colors.white, 14),
  //                               ),
  //                             ),
  //                           ),
  //                           Text(
  //                             'SECOND',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 11),
  //                           )
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                   SizedBox(
  //                     height: 40,
  //                   ),
  //                   Text(
  //                     'Up To 25% Off | Shop name' +
  //                         '\n' +
  //                         'Promo Codes & Coupons',
  //                     style: CodeyFont.textStyleRegular(Colors.white, 15),
  //                   ),
  //                   SizedBox(
  //                     height: 10,
  //                   ),
  //                   Text(
  //                     'Shop these Shopname deals of the day' +
  //                         '\n' +
  //                         'to save as much..',
  //                     style: CodeyFont.textStyleRegular(Colors.white, 11),
  //                   ),
  //                   SizedBox(
  //                     height: 20,
  //                   ),
  //                   Text(
  //                     'CLICK BELOW TO GET YOUR COUPON CODE',
  //                     style: CodeyFont.textStyleRegular(Colors.white, 11),
  //                   ),
  //                   SizedBox(
  //                     height: 5,
  //                   ),
  //                   MaterialButton(
  //                     onPressed: () {},
  //                     color: Color(0xffDABD6C),
  //                     child: Text(
  //                       'Get 72%',
  //                       style: CodeyFont.textStyleRegular(Colors.white, 15),
  //                     ),
  //                   ),
  //                   SizedBox(
  //                     height: 60,
  //                   ),
  //                   Row(
  //                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                     children: [
  //                       Column(
  //                         children: [
  //                           Icon(
  //                             Icons.link_rounded,
  //                             color: Colors.white,
  //                             size: 14,
  //                           ),
  //                           Text(
  //                             'WEBSITE',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 13),
  //                           )
  //                         ],
  //                       ),
  //                       // SizedBox(
  //                       //   width: 5,
  //                       // ),
  //                       Column(
  //                         children: [
  //                           Icon(
  //                             Icons.location_on_outlined,
  //                             color: Colors.white,
  //                             size: 14,
  //                           ),
  //                           Text(
  //                             'LOCATION',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 13),
  //                           ),
  //                         ],
  //                       ),
  //                       // SizedBox(
  //                       //   width: 5,
  //                       // ),
  //                       Column(
  //                         children: [
  //                           Icon(
  //                             Icons.phone_outlined,
  //                             color: Colors.white,
  //                             size: 14,
  //                           ),
  //                           Text(
  //                             'PHONE',
  //                             style:
  //                                 CodeyFont.textStyleRegular(Colors.white, 13),
  //                           ),
  //                         ],
  //                       ),
  //                     ],
  //                   )
  //                 ],
  //               )
  //             ],
  //           ),
  //         );
  //       });
  // }
}
