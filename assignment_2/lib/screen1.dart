import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  Widget category(String asset, String text) {
    return Column(
      children: [
        CircleAvatar(radius: 30.0, backgroundImage: AssetImage(asset)),
        SizedBox(height: 2),
        Text(text),
      ],
    );
  }

  Widget ContainerButtons(
    String asset,
    String title,
    String description,
    String price,
    String oldPrice,
    String discount,
    String rating_cnt,
  ) {
    return Container(
      width: 180,
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
                      "$price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(width: 6),
                    Text(
                      "$oldPrice",
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
                      rating_cnt,
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

  Widget ContainerButtons_next(
    String asset,
    String title,
    String description,
    String price,
    String oldPrice,
    String discount,
  ) {
    return Container(
      width: 160,
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
              height: 110,
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
                // SizedBox(height: 4),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "₹$price",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "₹$oldPrice",
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
                  ],
                ),
                SizedBox(height: 6),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Image.asset('assets/Component 1.png'),

        title: Row(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 60),
            Image.asset(
              'assets/appbar_stylish_symbol.png',
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
            //Image.asset('assets/appbar_girl_icon')
          ],
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/appbar_girl_icon.png'),
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
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10), // Circular border
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10),
                    Icon(Icons.search_rounded),
                    SizedBox(width: 10),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search any Product..",
                        ),
                      ),
                    ),
                    Icon(Icons.mic),
                    SizedBox(width: 10),
                  ],
                ),
              ),

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
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 100,
                padding: EdgeInsets.all(8),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    category("assets/beauty.png", "Beauty"),
                    SizedBox(width: 12),
                    category("assets/fashion.png", "Fashion"),
                    SizedBox(width: 12),
                    category("assets/kids.png", "Kids"),
                    SizedBox(width: 12),
                    category("assets/mens.png", "Mens"),
                    SizedBox(width: 12),
                    category("assets/womens.png", "Womens"),
                  ],
                ),
              ),

              SizedBox(height: 10),
              Stack(
                children: [
                  Image.asset('assets/Rectangle 48.png'),
                  Positioned(
                    top: 20,
                    left: 10,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "50-40% OFF",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Now in (product)",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          "All Colors",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 10),

                        OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.white),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadiusGeometry.circular(8),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 8,
                            ),
                            minimumSize: Size(0, 0),
                          ),

                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Shop Now",
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
                ],
              ),
              SizedBox(height: 15),
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
              SizedBox(height: 10),
              Container(
                height: 70,
                width: 343,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
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

              Row(
                children: [
                  ContainerButtons(
                    'assets/Mask Group.png',
                    'Women Printed Kurta',
                    'Lorem Ipsum',
                    '₹1500',
                    '₹2499',
                    '40%Off',
                    '56890',
                  ),
                  SizedBox(width: 10),
                  Stack(
                    children: [
                      ContainerButtons(
                        'assets/Mask Group (1).png',
                        'HRX by Hritik Roshan',
                        'Lorem Ipsum',
                        '₹1500',
                        '₹2499',
                        '40%Off',
                        '344567',
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
              ),

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
                    Image.asset('assets/Rectangle 56.png'),
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
              Container(
                height: 178,
                width: 355,
                color: Colors.white,

                //margin: EdgeInsets.all(10),
                //padding: EdgeInsets.all(16),
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(0),
                // ),
                child: Row(
                  children: [
                    Image.asset(
                      'assets/Rectangle 54.png',
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
                              child: Image.asset('assets/stars.png'),
                            ),

                            Padding(
                              padding: EdgeInsetsGeometry.only(
                                left: 20.0,
                                top: 25.0,
                              ),
                              child: Image.asset('assets/sandals.png'),
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
                                    borderRadius: BorderRadiusGeometry.circular(
                                      4,
                                    ),
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
                                    Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    ),
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
              ),
              SizedBox(height: 10),

              Container(
                height: 70,
                width: 353,
                decoration: BoxDecoration(
                  color: Colors.pink.shade300,
                  borderRadius: BorderRadius.circular(10),
                ),

                child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
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
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ContainerButtons_next(
                      'assets/Mask Group (2).png',
                      'IWC Schaffhausen 2021 Pilot Watch "SIHH 2019" 44mm',
                      '',
                      '650',
                      '1599',
                      '60%off',
                    ),
                    SizedBox(width: 7),
                    Stack(
                      children: [
                        Row(
                          children: [
                            ContainerButtons_next(
                              'assets/Mask Group (3).png',
                              'Labbin White Sneakers For Men and Female',
                              '',
                              '650',
                              '1250',
                              '70%off',
                            ),
                            SizedBox(width: 10),
                            ContainerButtons_next(
                              'assets/Mask Group (3).png',
                              'Labbin White Sneakers For Men and Female',
                              '',
                              '650',
                              '1250',
                              '70%off',
                            ),
                          ],
                        ),

                        Positioned(
                          bottom: 100,
                          right: 150,
                          child: CircleAvatar(
                            backgroundColor: Colors.grey.shade300,
                            child: Icon(
                              Icons.navigate_next,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 7),
                  ],
                ),
              ),

              SizedBox(height: 10),

              Container(
                height: 270,
                width: 343,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/image 10.png',
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
                              SizedBox(height: 10),
                              Text(
                                "New Arrivals",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(height: 8),
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
                  ],
                ),
              ),
              SizedBox(height: 16),
              Container(
                color: Colors.white,
                height: 380,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
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
                      ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset('assets/shoes.png'),
                      ),
                      SizedBox(height: 10),
                      Row(
                        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.home, color: Colors.red),
                Text("Home", style: TextStyle(color: Colors.red)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.favorite_border, color: Colors.black),
                Text("Wishlist", style: TextStyle(color: Colors.black)),
              ],
            ),

            SizedBox(width: 40),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.search, color: Colors.black),
                Text("Search", style: TextStyle(color: Colors.black)),
              ],
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.settings, color: Colors.black),
                Text("Setting", style: TextStyle(color: Colors.black)),
              ],
            ),
          ],
        ),
      ),

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
