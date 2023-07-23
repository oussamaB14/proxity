import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';

class ProductCard extends StatelessWidget {
  final String productName;
  final double price;
  final String date;
  final String location;
  final String imageUrl;

  const ProductCard({
    super.key,
    required this.productName,
    required this.price,
    required this.date,
    required this.location,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: 200,
      // width: 60,
      child: SizedBox(
        width: 200,
        height: 200,
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  imageUrl,
                  width: 130,
                  height: 130,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      price.toStringAsFixed(2),
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    const Text(
                      'TND',
                      style: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: 14,
                        color: Color.fromARGB(255, 242, 92, 85),
                      ),
                    )
                  ],
                ),
                Text(
                  productName,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                const Divider(),
                Row(
                  children: [
                    Icon(TernavIcons.lightOutline.clock, size: 15),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    Icon(TernavIcons.lightOutline.location, size: 15),
                    Text(
                      location,
                      style: const TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
