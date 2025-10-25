import 'package:flutter/material.dart';

class AppleProductPage extends StatelessWidget {
  const AppleProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with status bar simulation
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '11:59',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.signal_cellular_4_bar,
                          size: 16,
                          color: Colors.black,
                        ),
                        const SizedBox(width: 4),
                        Icon(Icons.wifi, size: 16, color: Colors.black),
                        const SizedBox(width: 4),
                        Icon(Icons.battery_full, size: 16, color: Colors.black),
                      ],
                    ),
                  ],
                ),
              ),

              // Navigation bar
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  children: [
                    const Text(
                      'Sarmiento_Activity1',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        'ZBUG',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Main product image
              Container(
                width: double.infinity,
                height: 300,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assest/product_image/apple_products.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Product title
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'Sarmiento_Activity 1',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Product description
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: const Text(
                  'Discover the latest Apple ecosystem with our curated collection featuring the iPad Mini, AirPods Max, Magic Trackpad, AirTags, and Magic Mouse. Each product represents Apple\'s commitment to innovation, design excellence, and seamless integration.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Reviews section
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Row(
                      children: List.generate(5, (index) {
                        return Icon(
                          index < 4 ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 20,
                        );
                      }),
                    ),
                    const SizedBox(width: 8),
                    const Text(
                      '120 Reviews',
                      style: TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 32),

              // Key metrics section
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _buildMetricCard(
                      icon: Icons.schedule,
                      label: 'SETUP',
                      value: '5 min',
                    ),
                    _buildMetricCard(
                      icon: Icons.devices,
                      label: 'DEVICES',
                      value: '5 items',
                    ),
                    _buildMetricCard(
                      icon: Icons.people,
                      label: 'USERS',
                      value: '1-4',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMetricCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Column(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Icon(icon, color: Colors.white, size: 30),
        ),
        const SizedBox(height: 12),
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(fontSize: 14, color: Colors.black87),
        ),
      ],
    );
  }
}
