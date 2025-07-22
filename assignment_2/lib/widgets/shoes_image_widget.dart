import 'package:flutter/material.dart';

class ShoesImageWidget extends StatelessWidget {
  const ShoesImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                color: Colors.white,
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sponsored',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      SizedBox(height: 10),
                       Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ClipRRect(
                          child: Image.asset(
                            'assets/shoes.png',
                            width: 400,
                            height: 290,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                      
                        children: [
                          Text(
                            "Up to 50% Off",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, size: 16),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}