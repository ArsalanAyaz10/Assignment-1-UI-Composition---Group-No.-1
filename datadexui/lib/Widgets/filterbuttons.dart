import 'package:flutter/material.dart';

class PokemonButton extends StatelessWidget {
  final String label;
  final Color color;

  const PokemonButton({
    super.key,
    required this.label,
    this.color = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(label, style: TextStyle(fontSize: 11, color: Colors.white)),
      ),
    );
  }
}

class ShapedPokemonButton extends StatelessWidget {
  final String label;
  final Color color;

  const ShapedPokemonButton({
    super.key,
    required this.label,
    this.color = const Color(0xFFE0E0E0),
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 40,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          foregroundColor: Colors.black,
          elevation: 0,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0),
              bottomLeft: Radius.circular(0),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Text(label, style: TextStyle(fontSize: 12, color: Colors.white)),
      ),
    );
  }
}
