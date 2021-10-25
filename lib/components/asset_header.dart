import 'package:flutter/material.dart';

class AssetHeader extends StatelessWidget {
  final String title;
  final String subTitle;

  AssetHeader({
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w300,
            ),
          ),
          Container(
            height: 10,
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              // color: Colors.black54,
            ),
          ),
        ],
      ),
    );
  }
}
