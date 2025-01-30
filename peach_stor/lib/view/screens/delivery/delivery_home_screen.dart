import 'package:flutter/material.dart';

class DeliveryHomeScreen extends StatelessWidget {
  const DeliveryHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Delivery Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.delivery_dining),
              title: const Text('Active Orders'),
              subtitle: const Text('3 orders pending'),
              onTap: () {
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.history),
              title: const Text('Order History'),
              subtitle: const Text('View completed deliveries'),
              onTap: () {
                
              },
            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.account_balance_wallet),
              title: const Text('Earnings'),
              subtitle: const Text('View your earnings'),
              onTap: () {   
              },
            ),
          ),
        ],
      ),
    );
  }
} 