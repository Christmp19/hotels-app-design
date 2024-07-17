import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';

const dGreen = Color(0xFF54D3C2);
final kNow = DateTime.now();
final kFirstDay = DateTime(kNow.year, kNow.month - 3, kNow.day);
final kLastDay = DateTime(kNow.year, kNow.month + 3, kNow.day);


class CalendarPage extends StatelessWidget {
  const CalendarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: dGreen,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Hello world')
            // const PeriodSection(),
            // const CalendarRange(),
            // const ValidateBookingSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.grey[800],
        size: 20,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
    backgroundColor: Colors.white,
    );
  }
}
