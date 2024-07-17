import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotels/calendar_page.dart';

const dGreen = Color(0xFF54D3C2);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hotels Booking',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchSection(),
            HotelSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          Icons.arrow_back,
          color: Color(0xFF424242),
          size: 20,
        ),
        onPressed: () {},
      ),
      title: Text(
        'Explore',
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w800,
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(
            Icons.favorite_outline_rounded,
            color: Color(0xFF424242),
            size: 20,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(
            Icons.place,
            color: Color(0xFF424242),
            size: 20,
          ),
          onPressed: () {},
        ),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
    );
  }
}

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: const Offset(0, 3),
                        )
                      ]),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'London',
                      contentPadding: EdgeInsets.all(10),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(25)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CalendarPage(),
                      ),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: dGreen,
                    padding: const EdgeInsets.all(10),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(
                    Icons.search,
                    size: 26,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          // const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Choose date',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '12 May - 18 May',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Number of Rooms',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      '1 Room - 2 Adults',
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  HotelSection({super.key});

  final List<Map<String, dynamic>> hotelList = [
    {
      'title': 'Grand Palladium',
      'place': 'London',
      'distance': 2.0,
      'review': 80,
      'picture': 'images/hotel_1.jpg',
      'price': 180,
    },
    {
      'title': 'Queen Park Hotel',
      'place': 'New York',
      'distance': 4.0,
      'review': 120,
      'picture': 'images/hotel_2.jpg',
      'price': 220,
    },
    {
      'title': 'Taj Hotel',
      'place': 'Delhi',
      'distance': 3.0,
      'review': 100,
      'picture': 'images/hotel_3.jpg',
      'price': 300,
    },
    {
      "title": "Grand Palace Hotel",
      "place": "Paris",
      "distance": 2.5,
      "review": 150,
      "picture": "images/hotel_4.jpg",
      "price": 450
    },
    {
      "title": "Le Méridien",
      "place": "Paris",
      "distance": 2.5,
      "review": 150,
      "picture": "images/hotel_5.jpg",
      "price": 350
    },
    {
      "title": "The Ritz-Carlton",
      "place": "New York",
      "distance": 4.0,
      "review": 200,
      "picture": "images/hotel_6.jpg",
      "price": 400
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(children: [
        const SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '550 hotels found',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                ),
              ),
              Row(
                children: [
                  Text(
                    'Filters',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.filter_list_outlined,
                      color: dGreen,
                      size: 25,
                    ),
                    onPressed: null,
                  )
                ],
              )
            ],
          ),
        ),
        Column(
            children: hotelList.map((hotel) {
               return HotelCard(hotelData: hotel);
            }).toList(),
            ),
      ]),
    );
  }
}

class HotelCard extends StatelessWidget {
  const HotelCard({super.key, required this.hotelData});

  final Map hotelData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(18),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 6,
              offset: const Offset(0, 3),
            ),
          ]),
      child: Column(
        children: [
          Container(
            height: 140,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(18),
                topRight: Radius.circular(18),
              ),
              image: DecorationImage(
                image: AssetImage(
                  hotelData['picture'],
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 5,
                  right: -15,
                  child: MaterialButton(
                    color: Colors.white,
                    shape: const CircleBorder(),
                    onPressed: () {},
                    child: const Icon(
                      Icons.favorite_outline_rounded,
                      color: dGreen,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      hotelData['title'],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '\$${hotelData['price']}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ])),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotelData['place'],
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: dGreen,
                      size: 14,
                    ),
                    Text(
                      '${hotelData['distance']} km to city center',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                Text(
                  'per night',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[800],
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(10, 3, 10, 0),
            child: Row(
              children: [
                const Row(children: [
                  Icon(
                    Icons.star_rate,
                    color: dGreen,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: dGreen,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: dGreen,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_rate,
                    color: dGreen,
                    size: 14,
                  ),
                  Icon(
                    Icons.star_border,
                    color: dGreen,
                    size: 14,
                  ),
                ]),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  '${hotelData['review']} reviews',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
