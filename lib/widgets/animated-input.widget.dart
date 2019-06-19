import 'package:flutter/material.dart';

class AnimatedInput extends StatelessWidget {
  final AnimationController controller;
  final Animation<Color> containerColorAnim;
  final Animation<double> containerOpacityAnim;
  final Animation<double> containerBorderRadiusAnim;
  final Animation<double> containerSizeAnim;

  AnimatedInput({this.controller})
      : containerOpacityAnim = Tween(
          begin: 0.0,
          end: 1.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.7, 0.9),
          ),
        ),
        containerSizeAnim = Tween(
          begin: 60.0,
          end: 280.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.2, 0.3),
          ),
        ),
        containerBorderRadiusAnim = Tween(
          begin: 0.0,
          end: 30.0,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.25, 0.4),
          ),
        ),
        containerColorAnim = ColorTween(
          begin: Colors.white.withOpacity(0),
          end: Colors.black12,
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25),
          ),
        );

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _animate,
      animation: controller,
    );
  }

  Widget _animate(context, child) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: containerColorAnim.value,
        borderRadius: BorderRadius.all(
          Radius.circular(
            containerBorderRadiusAnim.value,
          ),
        ),
      ),
      margin: EdgeInsets.all(5),
      width: containerSizeAnim.value,
      child: Opacity(
        opacity: containerOpacityAnim.value,
        child: Row(
          children: <Widget>[
            SizedBox(
              width: 20,
            ),
            Icon(Icons.search),
            SizedBox(
              width: 20,
            ),
            Container(
              width: 200,
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
      ),
    );
  }
}
