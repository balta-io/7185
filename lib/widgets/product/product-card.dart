import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final double price;

  ProductCard({
    @required this.image,
    @required this.title,
    @required this.description,
    @required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 170,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductPage(),
                ),
              );
            },
            child: Center(
              child: Hero(
                child: Image.asset(
                  image,
                  width: 170,
                  height: 220,
                ),
                tag: image,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $price",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00C569),
            ),
          ),
        ],
      ),
    );
  }
}
