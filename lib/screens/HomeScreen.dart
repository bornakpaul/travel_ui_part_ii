import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui_part_ii/widgets/destination_carousel.dart';
import 'package:travel_ui_part_ii/widgets/hotel_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0;
  int _currentTab =0;

  List<IconData> _icons = [
    Icons.airplanemode_on_rounded,
    Icons.king_bed_rounded,
    Icons.directions_walk_rounded,
    Icons.directions_bike_rounded,
  ];

  Widget _buildIcon(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: _selectedIndex == index ? Theme.of(context).accentColor : Colors.grey[200],
        ),
        child: _selectedIndex == index ? Icon(_icons[index],size: 25.0,color
            : Theme.of(context).primaryColor,): Icon(_icons[index],size: 25.0,color: Colors.grey),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top:30.0,left: 15.0, right: 15.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 85.0),
              child: Text('What would you like to find ?',style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w600),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  _buildIcon(0),
                  _buildIcon(1),
                  _buildIcon(2),
                  _buildIcon(3),
                ]
            ),
            SizedBox(height: 20,),
            destination_carousel(),
            SizedBox(height: 20,),
            hotel_carousel(),// calling the destination carousel here
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value){
          setState(() {
            _currentTab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded,size: 30.0,),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,size: 30.0,),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: AssetImage('assets/sikkim.jpeg')
            ),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
