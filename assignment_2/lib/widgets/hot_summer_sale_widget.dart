import 'package:flutter/material.dart';

class HotSummerSaleWidget extends StatelessWidget {
  const HotSummerSaleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 270,
      width: 343,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/hot_summer_sale.png',
            height: 190,
            width: 343,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Container(
            height: 70,
            width: 353,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),

            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //SizedBox(height: 10),
                    Text(
                      "New Arrivals",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),

                    Text(
                      "Summer' 25 Collections",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 55),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    // side: BorderSide(color: const Color.fromARGB(255, 170, 13, 13)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(4),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    minimumSize: Size(0, 0),
                  ),

                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("View All", style: TextStyle(color: Colors.white)),
                      SizedBox(width: 8),
                      Icon(Icons.arrow_forward, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
