import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
    return const Scaffold(
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SearchSection(),
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
                  onPressed: () {},
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
                    Text('12 May - 18 May',
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
                    Text('1 Room - 2 Adults',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    ),
                    ),
                  ],
                ),
              ),
          ],)
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  const HotelSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.white,
    );
  }
}
