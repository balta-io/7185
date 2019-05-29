import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  child: Image.asset(
                    "assets/product-10.png",
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                  ),
                  tag: "assets/product-10.png",
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10),
              child: Text(
                "Dry Fit Long Sleeve",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("by Nike"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Details",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
            ),
          ],
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white.withOpacity(0),
      //   elevation: 0.0,
      // ),
      // body: ListView(
      //   children: <Widget>[
      //     AppBar(),
      //     Container(
      //       alignment: Alignment.topCenter,
      //       width: double.infinity,
      //       child: Hero(
      //         child: Image.asset(
      //           "assets/product-10.png",
      //           width: double.infinity,
      //           fit: BoxFit.fitWidth,
      //         ),
      //         tag: "assets/product-10.png",
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.only(top: 10, left: 10, right: 10),
      //       child: Text(
      //         "Dry Fit Long Sleeve",
      //         style: TextStyle(
      //           fontSize: 26,
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text("by Nike"),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text(
      //         "Details",
      //         style: TextStyle(
      //           fontWeight: FontWeight.bold,
      //         ),
      //       ),
      //     ),
      //     Padding(
      //       padding: EdgeInsets.all(10),
      //       child: Text(
      //           "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      //     ),
      //   ],
      // ),
    );
  }
}
