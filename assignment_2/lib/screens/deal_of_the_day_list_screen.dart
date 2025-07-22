import 'package:flutter/material.dart';
import 'package:assignment_2/widgets/deal_of_the_day.dart';

class DealOfTheDayListScreen extends StatelessWidget {
  const DealOfTheDayListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DealOfTheDay(
          asset: 'assets/deal_of_the_day_images/kurta_girl.png',
          title: 'Women Printed Kurta',
          description: 'Lorem Ipsum',
          price: '₹1500',
          oldPrice: '₹2499',
          discount: '40%Off',
          ratingcount: '56890',
        ),
        SizedBox(width: 10),
        Stack(
          children: [
            DealOfTheDay(
              asset: 'assets/deal_of_the_day_images/hritik_shoes.png',
              title: 'HRX by Hritik Roshan',
              description: 'Lorem Ipsum',
              price: '₹2499',
              oldPrice: '₹4999',
              discount: '50%Off',
              ratingcount: '344567',
            ),
            Positioned(
              bottom: 86,
              right: 2,
              child: CircleAvatar(
                radius: 23,
                backgroundColor: Colors.grey.shade400.withValues(),
                child: Icon(Icons.navigate_next),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
