import 'package:coconutapp/views/game_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
          0XFF9CCC65), // Const burada kullanılabilir çünkü sabit bir renk değeri
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            const Text(
              "Welcome to the CocoWorld!",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const GameScreen()));
              },
              child: const Text("Go to game"),
            ),
          ],
        ),
      ),
    );
  }
}
