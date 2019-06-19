import 'package:flutter/material.dart';
import 'package:shopping/widgets/product/product-card.widget.dart';

class ProductList extends StatelessWidget {
  final Axis scrollDirection;

  ProductList({@required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: scrollDirection,
        children: <Widget>[
          ProductCard(
            title: "Nike Dry-Fit Long Sleeve",
            description: "Nike",
            image: "assets/product-10.png",
            price: 150,
          ),
          ProductCard(
            title: "BeoPlay Speaker",
            description: "Bang and Olufsen",
            image: "assets/product-1.png",
            price: 755,
          ),
          ProductCard(
            title: "Leather Wristwatch",
            description: "Tag Heuer",
            image: "assets/product-2.png",
            price: 450,
          ),
          ProductCard(
            title: "Smart Bluetooth Speaker",
            description: "Google Inc.",
            image: "assets/product-3.png",
            price: 900,
          ),
          ProductCard(
            title: "Smart Luggage",
            description: "Smart Inc.",
            image: "assets/product-4.png",
            price: 1000,
          ),
        ],
      ),
    );
  }
}
