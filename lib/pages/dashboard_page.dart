import 'package:flutter/material.dart';
import 'package:aplikasi_cafe/widgets/dashboard_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Welcome back, Admin!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'Here\'s what\'s happening at your cafe today',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              children: [
                DashboardCard(
                  title: 'Today\'s Revenue',
                  value: 'Rp 2.450.000',
                  icon: Icons.attach_money,
                  color: Colors.green,
                ),
                DashboardCard(
                  title: 'Total Orders',
                  value: '87',
                  icon: Icons.shopping_cart,
                  color: Colors.blue,
                ),
                DashboardCard(
                  title: 'Active Customers',
                  value: '34',
                  icon: Icons.people,
                  color: Colors.orange,
                ),
                DashboardCard(
                  title: 'Popular Items',
                  value: '12',
                  icon: Icons.star,
                  color: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
