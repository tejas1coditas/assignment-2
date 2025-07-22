import 'package:flutter/material.dart';
import 'package:assignment_2/widgets/all_featured_list.dart';

class AllFeaturedListScreen extends StatelessWidget {
  const AllFeaturedListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 100,
      padding: EdgeInsets.all(8),

    
      child: ListView(
      
        scrollDirection: Axis.horizontal,
        children: [
          AllFeaturedList(
            text: 'Beauty',
            assetPath: 'assets/feature_images/beauty.png',
          ),
          SizedBox(width: 14),
          AllFeaturedList(
            text: 'Fashion',
            assetPath: 'assets/feature_images/fashion.png',
          ),
          SizedBox(width: 14),
          AllFeaturedList(
            text: 'Kids',
            assetPath: 'assets/feature_images/kids.png',
          ),
          SizedBox(width: 14),
          AllFeaturedList(
            text: 'Mens',
            assetPath: 'assets/feature_images/mens.png',
          ),
          SizedBox(width: 14),
          AllFeaturedList(
            text: 'Womens',
            assetPath: 'assets/feature_images/womens.png',
          ),
          SizedBox(width: 14),
          AllFeaturedList(
            text: 'Womens',
            assetPath: 'assets/feature_images/womens.png',
          ),
          SizedBox(width: 14),
        ],
      ),
    );
  }
}
