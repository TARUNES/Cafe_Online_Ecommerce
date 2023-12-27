import 'package:e_commerce/features/screens/home_page.dart';
import 'package:e_commerce/features/screens/mycart_page.dart';
import 'package:e_commerce/features/screens/profile_page.dart';
import 'package:e_commerce/features/screens/wishlist_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: IndexedStack(
        index: _currentIndex,
        children: [HomePage(), CartPage(), WishlistPage(), ProfilePage()],
      ),
      bottomNavigationBar: SnakeNavigationBar.color(
        height: 70,

        backgroundColor: Color.fromRGBO(183, 130, 108, 1),
        // padding: EdgeInsets.all(10),
        snakeShape: SnakeShape.circle,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.white,

        snakeViewColor: Color.fromRGBO(210, 180, 156, 1),
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'cart'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'wishlist'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'profile'),
        ],
      ),
    );
  }
}
