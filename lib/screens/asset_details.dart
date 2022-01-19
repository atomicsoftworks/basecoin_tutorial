import 'package:basecoin/components/asset_stats.dart';
import 'package:basecoin/components/chart_filter.dart';
import 'package:basecoin/components/pill_button.dart';
import 'package:basecoin/components/portfolio_card.dart';
import 'package:basecoin/components/price.dart';
import 'package:basecoin/models/assets/asset.dart';
import 'package:basecoin/utilities/format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AssetDetails extends StatefulWidget {
  final Asset asset;

  AssetDetails({required this.asset});

  @override
  _AssetDetailsState createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.asset.symbol.toUpperCase()),
        elevation: 0,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 30),
                    child: Price(
                      amount: Format.toAmount(widget.asset.price),
                      percentChange: widget.asset.percentChange24h,
                    ),
                  ),
                  PortfolioCard(
                    asset: widget.asset,
                    lineColor: theme.primaryColor,
                  ),
                  Container(
                    child: ChartFilter(
                      onPressed: () {
                        setState(() {});
                      },
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Divider()),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: AssetStats(
                      asset: widget.asset,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Text(
                      widget.asset.description ?? "",
                      style: TextStyle(),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Container(
                    height: 60,
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                child: PillButton(
                    label: "Trade",
                    radius: 200,
                    onPressed: () async {
                      print("The button was pressed!");
                    }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
