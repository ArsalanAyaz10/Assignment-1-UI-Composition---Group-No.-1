import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PokemonCard extends StatelessWidget {
  final String number;
  final String name;
  final String imagePath;
  final List<String> types;
  final Color backgroundColor;
  final bool isSelected;

  const PokemonCard({
    Key? key,
    required this.number,
    required this.name,
    required this.imagePath,
    required this.types,
    required this.backgroundColor,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          // Left section with number, name, and type
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Number, name and icons row
                  Row(
                    children: [
                      // Number and name section
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "#$number",
                              style: GoogleFonts.poppins(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Flexible(
                              child: Text(
                                name,
                                style: GoogleFonts.poppins(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.8),
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Icons section
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_border,
                            color: Colors.black.withOpacity(0.6),
                            size: 24,
                          ),
                          const SizedBox(width: 8),
                          Icon(
                            Icons.radio_button_unchecked,
                            color: Colors.black.withOpacity(0.6),
                            size: 24,
                          ),
                          const SizedBox(width: 10),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  // Type container
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    margin: const EdgeInsets.only(right: 80),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black12),
                    ),
                    child: Center(
                      child: Text(
                        types.isNotEmpty ? types.first.toUpperCase() : "",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Pokemon image with circular background
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.4),
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Image.asset(
                imagePath,
                width: 55,
                height: 55,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
