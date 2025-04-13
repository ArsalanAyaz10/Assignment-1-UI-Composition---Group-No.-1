import 'package:flutter/material.dart';

class AllButton extends StatelessWidget {
  final String label;
  final Color backgroundColor;
  final VoidCallback? onPressed;

  AllButton({
    super.key,
    required this.label,
    this.backgroundColor = const Color.fromARGB(255, 206, 210, 222),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed ?? () {},
        child: Expanded(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color.fromARGB(255, 104, 130, 149),
              fontSize: 9,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
