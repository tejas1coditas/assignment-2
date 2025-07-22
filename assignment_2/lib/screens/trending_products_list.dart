import 'package:flutter/material.dart';
import 'package:assignment_2/widgets/trending_products.dart';

class TrendingProductsList extends StatelessWidget {
  const TrendingProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Stack(
        children: [
          ListView(
            scrollDirection: Axis.horizontal,
            children: [
              TrendingProducts(
                asset: 'assets/trending_products_images/watch.png',
                title: 'IWC Schaffhausen 2021 Pilot Watch "SIHH 2019" 44mm',

                price: '650',
                oldPrice: '1599',
                discount: '60%off',
              ),
              SizedBox(width: 7),
              Row(
                children: [
                  TrendingProducts(
                    asset: 'assets/trending_products_images/sneakers.png',
                    title: 'Labbin White Sneakers For Men and Female',

                    price: '650',
                    oldPrice: '1250',
                    discount: '70%off',
                  ),
                  SizedBox(width: 10),
                  TrendingProducts(
                    asset: 'assets/trending_products_images/sneakers.png',
                    title: 'Labbin White Sneakers For Men and Female',

                    price: '650',
                    oldPrice: '1250',
                    discount: '70%off',
                  ),
                ],
              ),

              SizedBox(width: 7),
            ],
          ),

          Positioned(
            bottom: 100,
            right: 10,
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade300,
              child: Icon(Icons.navigate_next, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
