import 'package:flutter/material.dart';

class PillButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final TextStyle? style;
  final double? height;
  final bool isLoading;
  final double radius;
  final Color color;

  PillButton({
    required this.label,
    required this.onPressed,
    this.isLoading = false,
    this.style,
    this.height,
    this.radius = 200,
    this.color = Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
        height: height ?? 56,
        width: MediaQuery.of(context).size.width,
      ),
      child: TextButton(
        child: !isLoading
            ? Text(
                label,
                style: style ?? TextStyle(fontSize: 18),
              )
            : Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  color: color,
                ),
              ),
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          onPrimary: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
      ),
    );
  }
}
