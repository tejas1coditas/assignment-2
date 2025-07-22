import 'package:assignment_2/screens/all_featured_list_screen.dart';
import 'package:assignment_2/screens/deal_of_the_day_list_screen.dart';
import 'package:assignment_2/screens/trending_products_list.dart';
import 'package:assignment_2/widgets/bottom_bar.dart';

import 'package:assignment_2/widgets/flat_heels_scandals.dart';
import 'package:assignment_2/widgets/hot_summer_sale_widget.dart';
import 'package:assignment_2/widgets/search_field.dart';
import 'package:assignment_2/widgets/shop_now_banner.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// NAMED PARAMETERS

  /// DO NOT RETURN WIDGETS FROM FUNCTIONS, make stateless or stateful widgets
  /// naming convention

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      //AppBar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/appbar_images/menu.png'),

        title: Row(
         
          children: [
            SizedBox(width: 60),
            Image.asset(
              'assets/appbar_images/appbar_stylish_symbol.png',
              height: 31,
              width: 40,
            ),
            SizedBox(width: 8),
            Text(
              "Stylish",
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontSize: 31,
              ),
            ),
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(
                'assets/appbar_images/appbar_girl_icon.png',
              ),
              radius: 20,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchField(),
              SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    "All Featured",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  SizedBox(width: 110),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 65,
                      height: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Text("Sort"), Icon(Icons.swap_vert)],
                      ),
                    ),
                  ),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 65,
                      height: 27,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Filter"),
                          Icon(Icons.filter_alt_outlined),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),
              AllFeaturedListScreen(),

              SizedBox(height: 10),

              //banner of shop now
              CarouselSlider(
                items: [ShopNowBanner(), ShopNowBanner(), ShopNowBanner()],
                options: CarouselOptions(
                  autoPlay: true,
                  enlargeCenterPage: true,
                  viewportFraction: 1,
                ),
              ),
              ////////////////////
              SizedBox(height: 15),
              /////Circle avatars
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    radius: 5,
                  ),
                  SizedBox(width: 3),
                  CircleAvatar(
                    backgroundColor: Colors.pink.shade200,
                    radius: 5,
                  ),
                  SizedBox(width: 3),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    radius: 5,
                  ),
                ],
              ),
              ////////
              SizedBox(height: 10),
              Container(
                height: 70,
                width: 343,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                //Deal Of the Day
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Deal of the Day",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.alarm, color: Colors.white),
                            Text(
                              "22h 55m 20s remaining",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),


                    SizedBox(width: 45),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        minimumSize: Size(0, 0),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

             
              DealOfTheDayListScreen(),

              SizedBox(height: 15),

           
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 84,
                width: 353,
                child: Row(
                  children: [
                    SizedBox(width: 8),
                    Image.asset('assets/special_offer.png'),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              "Special Offers",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 5),
                            Image.asset('assets/emoji.png'),
                          ],
                        ),
                        SizedBox(height: 5),
                        Text("We make sure you get the"),
                        Text("offer you need at best prices"),
                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15),
              FlatHeelsScandals(),
              SizedBox(height: 10),

              Container(
                height: 70,
                width: 356,
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),

               
                child: Row(
                 
                  children: [
                    SizedBox(width: 5),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text(
                          "Trending Products",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.calendar_month, color: Colors.white),
                            Text(
                              "Last Date 29/02/22",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(width: 75),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.white),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 8,
                          vertical: 5,
                        ),
                        minimumSize: Size(0, 0),
                      ),

                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "View All",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(width: 8),
                          Icon(Icons.arrow_forward, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),

              //Next Containers

              ///
              TrendingProductsList(),

              SizedBox(height: 10),
              //Hot summer Sale
              HotSummerSaleWidget(),
              SizedBox(height: 16),
              Container(
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
              ),

              SizedBox(height: 25),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),

      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        onPressed: () {},
        backgroundColor: Colors.white,
        elevation: 4,
        child: Icon(Icons.shopping_cart_outlined, color: Colors.black),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
