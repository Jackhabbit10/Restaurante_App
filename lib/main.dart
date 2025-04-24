import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Restaurant()));
}

class Restaurant extends StatelessWidget {
  const Restaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pode entrar!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text("0", style: TextStyle(fontSize: 100, color: Colors.white)),
        ],
      ),
    );
  }
}
