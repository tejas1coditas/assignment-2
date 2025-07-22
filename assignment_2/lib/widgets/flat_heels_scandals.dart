import 'package:flutter/material.dart';

class FlatHeelsScandals extends StatelessWidget {
  const FlatHeelsScandals({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 178,
      width: 355,
      color: Colors.white,

      //Flat Heels
      child: Row(
        children: [
          Image.asset(
            'assets/flat_heels_images/yellow_bar.png',
            height: 200,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 8, 2, 8),
            child: Container(
              width: 340,
              color: Colors.grey.shade100,
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 18.0),
                    child: Image.asset('assets/flat_heels_images/stars.png'),
                  ),

                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 20.0, top: 25.0),
                    child: Image.asset('assets/flat_heels_images/sandals.png'),
                  ),

                  Padding(
                    padding: EdgeInsets.only(left: 150, top: 30),
                    child: Column(
                      children: [
                        Text(
                          "Flat and Heels",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                        Text(
                          "Stand a chance to get rewarded",
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  ),

                  Positioned(
                    top: 80,
                    right: 10,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.pink,
                        // side: BorderSide(color: const Color.fromARGB(255, 170, 13, 13)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(4),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        minimumSize: Size(0, 0),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Visit now",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
