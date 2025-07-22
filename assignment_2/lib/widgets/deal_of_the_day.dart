import 'package:flutter/material.dart';

class DealOfTheDay extends StatelessWidget {
  final String asset;
  final String title;
  final String description;
  final String price;
  final String oldPrice;
  final String discount;
  final String ratingcount;
  const DealOfTheDay({
    super.key,
    required this.asset,
    required this.title,
    required this.description,
    required this.price,
    required this.oldPrice,
    required this.discount,
    required this.ratingcount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,

      /// Avoid hardcoded width/height
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              asset,
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    Text(
                      price,

                      ///  price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      oldPrice,

                      /// oldPrice
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.lineThrough,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      discount,
                      style: TextStyle(fontSize: 12, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Row(
                  children: [
                    for (int i = 0; i < 5; i++)
                      Icon(
                        i < 4 ? Icons.star : Icons.star_half,
                        color: Colors.amber,
                        size: 16,
                      ),
                    SizedBox(width: 4),
                    Text(
                      ratingcount,
                      style: TextStyle(color: Colors.grey, fontSize: 10),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
