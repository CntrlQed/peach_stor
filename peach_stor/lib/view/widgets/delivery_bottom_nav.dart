import 'package:flutter/material.dart';

class DeliveryBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const DeliveryBottomNav({
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
            'assets/successful_delivery.png',
            height: 24,
            color: currentIndex == 1 ? Colors.white : Colors.grey,
          ),
          label: 'Deliveries',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/scroll.png',
            height: 24,
            color: currentIndex == 2 ? Colors.white : Colors.grey,
          ),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/notification.png',
            height: 24,
            color: currentIndex == 3 ? Colors.white : Colors.grey,
          ),
          label: 'Notifications',
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