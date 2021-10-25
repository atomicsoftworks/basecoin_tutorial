import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ChartFilter extends StatelessWidget {
  final VoidCallback? onPressed;

  ChartFilter({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1H",
              style: TextStyle(color: Colors.blueAccent),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1D",
              // style: TextStyle(color: Colors.black54),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1W",
              // style: TextStyle(color: Colors.black54),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1M",
              // style: TextStyle(color: Colors.black54),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "1Y",
              // style: TextStyle(color: Colors.black54),
            ),
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              "ALL",
              // style: TextStyle(color: Colors.black54),
            ),
          ),
        ],
      ),
    );
  }
}
