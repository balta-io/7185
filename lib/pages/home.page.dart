import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: Text(""),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(15),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            searchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: categoryMenu(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                FlatButton(
                  child: Text("See All"),
                  onPressed: () => {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget searchBox() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(
      left: 20,
    ),
    decoration: BoxDecoration(
      color: Color.fromRGBO(0, 0, 0, 0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(Icons.search),
        Container(
          width: 300,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Search...",
              labelStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryMenu() {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      categoryMenuItem("assets/Icon_Devices.png"),
      categoryMenuItem("assets/Icon_Gadgets.png"),
      categoryMenuItem("assets/Icon_Gaming.png"),
      categoryMenuItem("assets/Icon_Mens_Shoe.png"),
      categoryMenuItem("assets/Icon_Womens_Shoe.png"),
    ],
  );
}

Widget categoryMenuItem(String image) {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          offset: new Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        )
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset(image),
  );
}

Widget productList(context) {
  return ListView(
    scrollDirection: Axis.horizontal,
    children: <Widget>[
      productItem(context, "Nike Dry-Fit Long Sleeve", "Nike",
          "assets/product-10.png", "150"),
      productItem(context, "BeoPlay Speaker", "Bang and Olufsen",
          "assets/product-1.png", "755"),
      productItem(context, "Leather Wristwatch", "Tag Heuer",
          "assets/product-2.png", "450"),
      productItem(context, "Smart Bluetooth Speaker", "Google Inc.",
          "assets/product-3.png", "900"),
      productItem(context, "Smart Luggage", "Smart Inc.",
          "assets/product-4.png", "1000"),
    ],
  );
}

Widget productItem(
    context, String title, String desc, String image, String price) {
  return Container(
    width: 170,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductPage(),
                  ),
                ),
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
          desc,
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
