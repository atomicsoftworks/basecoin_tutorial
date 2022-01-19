import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;
  final double? height;
  final bool isLoading;
  final double radius;

  PillButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.style,
    this.height,
    this.radius = 200,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height ?? 56,
        width: MediaQuery.of(context).size.width,
      ),
      child: TextButton(
        child: Text(
          label,
          style: style ?? TextStyle(fontSize: 18),
        ),
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: Theme.of(context).primaryColor,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
