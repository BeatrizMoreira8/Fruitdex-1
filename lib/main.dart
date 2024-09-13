import 'package:flutter/material.dart';
import 'package:fruitdex/fruit_screen.dart';
import 'package:fruitdex/utils/colors.dart';

void main() => runApp(const MyFruitApp());

class MyFruitApp extends StatelessWidget {
  const MyFruitApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartFruit(),
    );
  }
}

class StartFruit extends StatefulWidget {
  const StartFruit({super.key});
  @override
  MyHomePageState createState() => MyHomePageState();
}

double screenWidth = 0;

class MyHomePageState extends State<StartFruit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: verdeprincipal,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(
            vertical: screenWidth / 100,
            horizontal: screenWidth / 150,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: Text(
                  'Os primeiros passos comecam aqui!',
                  style: TextStyle(
                    color: Colors.black, //vermelho ou preto?
                    fontSize: 26,
                    fontFamily: 'Bungee',
                    letterSpacing: 0.4,
                  ),
                ),
              ),
              SizedBox(
                  height: 500,
                  width: 1000,
                  child: Image.asset('imagens/logo.png')),
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Stack(children: <Widget>[
                    Positioned.fill(
                      child: Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            colors: <Color>[
                              Color(0xffff0062),
                              Color(0xffff2f87),
                              Color(0xfffb648b),
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.black,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 80, vertical: 30),
                        textStyle: const TextStyle(fontSize: 35),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FruitScreen(),
                            ));
                      },
                      child: const Text('Aprender',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontFamily: 'Bungee',
                          )),
                    )
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
