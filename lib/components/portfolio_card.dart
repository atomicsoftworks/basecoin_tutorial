import 'package:basecoin/components/asset_price_chart.dart';
import 'package:basecoin/models/assets/asset.dart';
import 'package:flutter/material.dart';

class PortfolioCard extends StatelessWidget {
  final Asset asset;
  final Color lineColor;

  PortfolioCard({required this.asset, required this.lineColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.white,
          ),
      height: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(
                top: 30,
                bottom: 10,
              ),
              child: AssetPriceChart(
                lineColor: lineColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
