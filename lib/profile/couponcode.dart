import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class CouponCode extends StatefulWidget {
  @override
  _CouponCodeState createState() => _CouponCodeState();
}

class _CouponCodeState extends State<CouponCode> {
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
              Card(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/shop-4.png',
                        height: 110,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF2721C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sale',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6AA2E5),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'In Store',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '78 Used',
                                    style: CodeyFont.textStyleRegular(
                                      Colors.grey,
                                      11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upto 25% off | Shop name' +
                                  '\n' +
                                  'Promo Codes & Coupons',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                13,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shop these shop name deals' +
                                  '\n' +
                                  'to save as much...',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 110,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 60,
                              decoration:
                                  BoxDecoration(color: Color(0xffD9BC6C)),
                              child: Center(
                                child: Text(
                                  '75%' + '\n' + 'OFF',
                                  style: CodeyFont.textStyleRegular(
                                    Colors.white,
                                    13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xff777777)),
                            child: Center(
                              child: Text(
                                'COUPON',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xffD9BC6C)),
                            child: Center(
                              child: Text(
                                'Get Code',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/shop-4.png',
                        height: 110,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF2721C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sale',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6AA2E5),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'In Store',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '78 Used',
                                    style: CodeyFont.textStyleRegular(
                                      Colors.grey,
                                      11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upto 25% off | Shop name' +
                                  '\n' +
                                  'Promo Codes & Coupons',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                13,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shop these shop name deals' +
                                  '\n' +
                                  'to save as much...',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 110,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 60,
                              decoration:
                                  BoxDecoration(color: Color(0xffD9BC6C)),
                              child: Center(
                                child: Text(
                                  '75%' + '\n' + 'OFF',
                                  style: CodeyFont.textStyleRegular(
                                    Colors.white,
                                    13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xff777777)),
                            child: Center(
                              child: Text(
                                'COUPON',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xffD9BC6C)),
                            child: Center(
                              child: Text(
                                'Get Code',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/shop-4.png',
                        height: 110,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF2721C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sale',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6AA2E5),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'In Store',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '78 Used',
                                    style: CodeyFont.textStyleRegular(
                                      Colors.grey,
                                      11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upto 25% off | Shop name' +
                                  '\n' +
                                  'Promo Codes & Coupons',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                13,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shop these shop name deals' +
                                  '\n' +
                                  'to save as much...',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 110,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 60,
                              decoration:
                                  BoxDecoration(color: Color(0xffD9BC6C)),
                              child: Center(
                                child: Text(
                                  '75%' + '\n' + 'OFF',
                                  style: CodeyFont.textStyleRegular(
                                    Colors.white,
                                    13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xff777777)),
                            child: Center(
                              child: Text(
                                'COUPON',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xffD9BC6C)),
                            child: Center(
                              child: Text(
                                'Get Code',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'images/shop-4.png',
                        height: 110,
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 0),
                      child: Container(
                        height: 110,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    decoration: BoxDecoration(
                                      color: Color(0xffF2721C),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sale',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      color: Color(0xff6AA2E5),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'In Store',
                                        style: CodeyFont.textStyleRegular(
                                          Colors.white,
                                          12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    '78 Used',
                                    style: CodeyFont.textStyleRegular(
                                      Colors.grey,
                                      11,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Upto 25% off | Shop name' +
                                  '\n' +
                                  'Promo Codes & Coupons',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                13,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Shop these shop name deals' +
                                  '\n' +
                                  'to save as much...',
                              style: CodeyFont.textStyleRegular(
                                Colors.grey,
                                10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 110,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Container(
                              width: 60,
                              decoration:
                                  BoxDecoration(color: Color(0xffD9BC6C)),
                              child: Center(
                                child: Text(
                                  '75%' + '\n' + 'OFF',
                                  style: CodeyFont.textStyleRegular(
                                    Colors.white,
                                    13,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xff777777)),
                            child: Center(
                              child: Text(
                                'COUPON',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 30,
                            width: 60,
                            decoration: BoxDecoration(color: Color(0xffD9BC6C)),
                            child: Center(
                              child: Text(
                                'Get Code',
                                style: CodeyFont.textStyleRegular(
                                  Colors.white,
                                  12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
