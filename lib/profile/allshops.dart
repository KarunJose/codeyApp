import 'package:codey/constants/font.dart';
import 'package:flutter/material.dart';

class AllShops extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Image.asset(
                'images/shop-2.png',
                height: 120,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('The Corner Store',
                      style: CodeyFont.textStyleRegular(Colors.black, 16)),
                  Text(
                    'Stationeries',
                    style: CodeyFont.textStyleRegular(
                      Colors.grey,
                      12,
                    ),
                  ),
                  Text(
                    'Very good',
                    style: CodeyFont.textStyleRegular(
                      Colors.black,
                      14,
                    ),
                  ),
                  Text(
                    '25% off selected items',
                    style: CodeyFont.textStyleRegular(
                      Colors.orange,
                      14,
                    ),
                  ),
                ],
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
              Image.asset(
                'images/shop-1.png',
                height: 120,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('Coffeeness, Al Mutawa',
                      style: CodeyFont.textStyleRegular(Colors.black, 16)),
                  Text(
                    'Coffee, Tea, Snacks',
                    style: CodeyFont.textStyleRegular(
                      Colors.grey,
                      12,
                    ),
                  ),
                  Text(
                    'Very good',
                    style: CodeyFont.textStyleRegular(
                      Colors.black,
                      14,
                    ),
                  ),
                  Text(
                    '35% off selected items',
                    style: CodeyFont.textStyleRegular(
                      Colors.orange,
                      14,
                    ),
                  ),
                ],
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
              Image.asset(
                'images/shop-3.png',
                height: 120,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('Decorma Boutique' + '\n' + 'Al Mutawa',
                      style: CodeyFont.textStyleRegular(Colors.black, 15)),
                  Text(
                    'Makeup, Clothing, Laundry',
                    style: CodeyFont.textStyleRegular(
                      Colors.grey,
                      12,
                    ),
                  ),
                  Text(
                    'Good',
                    style: CodeyFont.textStyleRegular(
                      Colors.black,
                      14,
                    ),
                  ),
                  Text(
                    '45% off selected items',
                    style: CodeyFont.textStyleRegular(
                      Colors.orange,
                      14,
                    ),
                  ),
                ],
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
              Image.asset(
                'images/shop-4.png',
                height: 120,
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text('Veggy, Al Mutawa',
                      style: CodeyFont.textStyleRegular(Colors.black, 16)),
                  Text(
                    'vegetables, Fruits',
                    style: CodeyFont.textStyleRegular(
                      Colors.grey,
                      12,
                    ),
                  ),
                  Text(
                    'Good',
                    style: CodeyFont.textStyleRegular(
                      Colors.black,
                      14,
                    ),
                  ),
                  Text(
                    '65% off selected items',
                    style: CodeyFont.textStyleRegular(
                      Colors.orange,
                      14,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
