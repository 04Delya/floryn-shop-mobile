import 'package:flutter/material.dart';
import 'package:floryn_shop/models/product.dart';

class DetailProductPage extends StatelessWidget {
  final FlorynShop product;
  const DetailProductPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Product Details',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              product.fields.name,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              "Description: ${product.fields.description}",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Text(
              "Category: ${product.fields.category}",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Text(
              "Amount: ${product.fields.amount}",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Text(
              "Price: Rp${product.fields.price}",
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 16),
            Text(
              "Rating: ${product.fields.rating}",
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}
