import 'package:datadexui/Widgets/all_buttons.dart';
import 'package:datadexui/Widgets/filterbuttons.dart';
import 'package:datadexui/Widgets/pokedex_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex',
      home: PokedexScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PokedexScreen extends StatelessWidget {
  const PokedexScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Pokédex',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.stars, color: Colors.grey, size: 20),
              SizedBox(width: 15),
              Icon(Icons.check_circle, color: Colors.grey, size: 20),
              SizedBox(width: 15),
              Icon(Icons.more_vert_sharp, color: Colors.grey),
              SizedBox(width: 5),
            ],
          ),
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.grey),
        elevation: 0,
      ),
      body: PokemonCards(),
    );
  }
}

class PokemonCards extends StatelessWidget {
  const PokemonCards({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly, // Evenly distribute buttons
              children: [
                Expanded(
                  child: PokemonButton(label: "Diamond", color: Colors.cyan),
                ),
                SizedBox(width: 5),
                Expanded(
                  child: ShapedPokemonButton(
                    label: "Pearl",
                    color: Colors.purpleAccent,
                  ),
                ),
                SizedBox(width: 3),
                Container(width: 1, height: 40, color: Colors.grey.shade300),
                SizedBox(width: 3),
                Expanded(child: AllButton(label: "ALL GENS")),
                SizedBox(width: 10),
                Container(width: 1, height: 40, color: Colors.grey.shade300),
                SizedBox(width: 5),
                Expanded(child: AllButton(label: "ALL TYPES")),
              ],
            ),
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: const [
                  PokemonCard(
                    number: "#001",
                    name: "Turtwig",
                    imagePath: "assets/turtwig.png",
                    types: ["GRASS"],
                    backgroundColor: Color(0xFFA8D5A2),
                  ),
                  PokemonCard(
                    number: "#002",
                    name: "Grotle",
                    imagePath: "assets/grotle.png",
                    types: ["GRASS"],
                    backgroundColor: Color(0xFF7AC47F),
                  ),
                  PokemonCard(
                    number: "#003",
                    name: "Torterra",
                    imagePath: "assets/torterra.png",
                    types: ["GRASS", "GROUND"],
                    backgroundColor: Color(0xFF558B58),
                  ),
                  PokemonCard(
                    number: "#004",
                    name: "Chimchar",
                    imagePath: "assets/chimchar.png",
                    types: ["FIRE"],
                    backgroundColor: Color(0xFFE67C3C),
                    isSelected: true,
                  ),
                  PokemonCard(
                    number: "#005",
                    name: "Monferno",
                    imagePath: "assets/monferno.png",
                    types: ["FIRE", "FIGHTING"],
                    backgroundColor: Color(0xFFF3B27A),
                  ),
                  PokemonCard(
                    number: "#006",
                    name: "Infernape",
                    imagePath: "assets/infernape.png",
                    types: ["FIRE", "FIGHTING"],
                    backgroundColor: Color(0xFFE26A5C),
                  ),
                  PokemonCard(
                    number: "#007",
                    name: "Piplup",
                    imagePath: "assets/piplup.png",
                    types: ["WATER"],
                    backgroundColor: Color(0xFF7CC9F5),
                  ),
                  PokemonCard(
                    number: "#008",
                    name: "Prinplup",
                    imagePath: "assets/prinplup.png",
                    types: ["WATER"],
                    backgroundColor: Color(0xFF7CC9F5),
                  ),
                  PokemonCard(
                    number: "#009",
                    name: "Empoleon",
                    imagePath: "assets/empoleon.png",
                    types: ["WATER", "Steel"],
                    backgroundColor: Color(0xFF7CC9F5),
                  ),
                  PokemonCard(
                    number: "#010",
                    name: "Starly",
                    imagePath: "assets/starly.png",
                    types: ["NORMAL", "FLYING"],
                    backgroundColor: Color.fromARGB(255, 149, 130, 132),
                  ),
                  PokemonCard(
                    number: "#011",
                    name: "Staravia",
                    imagePath: "assets/staravia.png",
                    types: ["NORMAL", "FLYING"],
                    backgroundColor: Color.fromARGB(255, 149, 130, 132),
                  ),
                  PokemonCard(
                    number: "#012",
                    name: "Staraptor",
                    imagePath: "assets/staraptar.png",
                    types: ["NORMAL", "FLYING"],
                    backgroundColor: Color.fromARGB(255, 149, 130, 132),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
