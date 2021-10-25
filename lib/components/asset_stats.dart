import 'package:basecoin/models/assets/asset.dart';
import 'package:basecoin/utilities/format.dart';
import 'package:flutter/material.dart';

class AssetStats extends StatelessWidget {
  final Asset asset;

  AssetStats({required this.asset});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stat(title: "High", value: Format.currency.format(asset.price)),
            Container(width: 30),
            Stat(title: "Symbol", value: asset.symbol.toUpperCase()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stat(title: "Low", value: Format.currency.format(asset.price)),
            Container(width: 30),
            Stat(title: "Rank", value: asset.rank.toString()),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stat(
                title: "24h vol.",
                value: Format.compactCurrency.format(asset.volume24h)),
            Container(width: 30),
            Stat(
                title: "Mkt cap",
                value: Format.compactCurrency.format(asset.marketCap)),
          ],
        ),
      ],
    );
  }
}

class Stat extends StatelessWidget {
  final String title;
  final String value;

  Stat({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom: 10, top: 10),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: theme.dividerColor,
              // color: Colors.black.withAlpha(15),
              width: 1.0,
            ),
          ),
        ),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            title,
            style: TextStyle(
              // color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 14,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              // color: Colors.black54,
              fontWeight: FontWeight.w400,
              fontSize: 14,
            ),
          ),
        ]),
      ),
    );
  }
}
