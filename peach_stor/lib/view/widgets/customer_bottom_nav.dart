import 'package:flutter/material.dart';

class CustomerBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomerBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/home.png',
            height: 24,
            color: currentIndex == 0 ? Colors.white : Colors.grey,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/diversity.png',
            height: 24,
            color: currentIndex == 1 ? Colors.white : Colors.grey,
          ),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/heart.png',
            height: 24,
            color: currentIndex == 2 ? Colors.white : Colors.grey,
          ),
          label: 'Wishlist',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/successful_delivery.png',
            height: 24,
            color: currentIndex == 3 ? Colors.white : Colors.grey,
          ),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/person.png',
            height: 24,
            color: currentIndex == 4 ? Colors.white : Colors.grey,
          ),
          label: 'Profile',
        ),
      ],
    );
  }
} 