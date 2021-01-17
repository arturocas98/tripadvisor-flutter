import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'profile_trips.dart';
import 'search_trips.dart';

class PlatziTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _PlatziTrips();
  }
}

class _PlatziTrips extends State<PlatziTrips> {
  int indexTap = 0;
  final List<Widget> widgetsChildrens = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips(),
  ];

  void onTapTapped(int index) {
    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildrens[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(canvasColor: Colors.white, primaryColor: Colors.blue),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.search),title: Text('')),
            BottomNavigationBarItem(icon: Icon(Icons.person),title: Text('')),
          ],
        ),
      ),
    );
  }
}
