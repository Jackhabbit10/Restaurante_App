import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Restaurant()));
}

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  int contador = 0;
  String mensagem = "Pode entrar!";
  void incremento() {
    if (contador != 10) {
      setState(() {
        contador++;
      });
    }
  }

  void decremento() {
    if (contador != 0) {
      setState(() {
        contador--;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Imagens/restaurant.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              contador == 10 ? "Lotado!" : "Pode entrar!",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
            Text(
              contador.toString(),
              style: TextStyle(
                fontSize: 100,
                color: const Color.fromARGB(255, 212, 51, 51),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: incremento,
                  child: Text("Entrou"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),

                SizedBox(width: 50),
                TextButton(
                  onPressed: decremento,
                  child: Text("Saiu"),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(100, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
