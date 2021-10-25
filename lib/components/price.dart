import 'package:basecoin/utilities/colors.dart';
import 'package:basecoin/utilities/format.dart';
import 'package:flutter/material.dart';

class Price extends StatelessWidget {
  final String? title;
  final Amount amount;
  final double percentChange;

  Price({
    required this.amount,
    required this.percentChange,
    this.title,
  });

  Widget _buildTitle(BuildContext context) {
    return title != null
        ? Container(
            padding: EdgeInsets.only(bottom: 4),
            child: Text(
              title!,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w300,
                // color: Colors.black54,
              ),
            ),
          )
        : Container();
  }

  Widget _buildAmount(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            text: amount.whole,
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontSize: 36,
            ),
          ),
          TextSpan(
            text: ".${amount.fractional}",
            style: TextStyle(
              color: Theme.of(context).textTheme.bodyText1!.color,
              fontWeight: FontWeight.w300,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPercentageChange() {
    return Text(
      Format.toPercent(percentChange),
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: ColorFormatter.percentage(percentChange),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          _buildTitle(context),
          _buildAmount(context),
          Container(height: 4),
          _buildPercentageChange(),
        ],
      ),
    );
  }
}
