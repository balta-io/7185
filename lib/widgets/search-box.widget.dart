import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
