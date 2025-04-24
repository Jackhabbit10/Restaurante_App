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
      body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("Imagens/restaurant.png"),
          fit: BoxFit.cover
          )

        ),
        child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Pode entrar!",
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text("0", style: TextStyle(fontSize: 100, color: const Color.fromARGB(255, 212, 51, 51))),
          Row( mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: null,
              child: Text("Entrou"), 
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(24))
              )
              ),

              SizedBox(width: 50,),

            TextButton(onPressed: null, 
            child: Text("Saiu"),
             style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              fixedSize: Size(100, 100),
              shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(24))
              )
              )
          ],),
        ],
      ),
      )
    );
  }
}
