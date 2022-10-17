import 'package:flutter/material.dart';
import 'package:flutter_app/pages/FoodOrderPage.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBarWidget extends StatefulWidget {
  @override
  _BottomNavBarWidgetState createState() => _BottomNavBarWidgetState();
}

class _BottomNavBarWidgetState extends State<BottomNavBarWidget> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;

      });
     switch(index){
       case 0:Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
       break;
       case 1:Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
       break;
       case 2:Navigator.push(context, MaterialPageRoute(builder: (context) => FoodOrderPage(),));
       break;
       case 3:Navigator.push(context, MaterialPageRoute(builder: (context) => SignInPage(),));
       break;

     }
     // if (index==0){Navigator.push(context, MaterialPageRoute(builder: (context) => ,));}
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label:
            'Home'
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.near_me),
          label:
            'Near By',


        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.card_giftcard),
          label:
            'Cart'
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
            label:
            'Account'
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Color(0xFFfd5352),
      onTap: _onItemTapped,
    );
  }
}
