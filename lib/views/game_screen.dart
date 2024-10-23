import 'package:coconutapp/const/colors.dart';
import 'package:coconutapp/data/coconut_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CoconutProvider>(builder: (context, value, child) {
      return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: backgroundColor,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Counter Text
                Text(
                  value.counter.toString(),
                  style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),

                const SizedBox(height: 20), // Biraz boşluk ekleyelim

                // Image with GestureDetector
                GestureDetector(
                  onTap: value.counterRise, // Counter'ı artıran işlev
                  child: Image.asset(
                    "assets/cocont.png",
                    width: 250,
                    height: 250,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
