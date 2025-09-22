import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  const PrimaryButton({super.key, required this.size, required this.text});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: size.width * 0.65,
      decoration: BoxDecoration(
        color: Colors.purple,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}