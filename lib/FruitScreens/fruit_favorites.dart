import 'package:flutter/material.dart';
import 'package:fruitdex/FruitScreens/fruit_element.dart';
import 'package:fruitdex/fruit_screen.dart';

class Favfruits extends StatefulWidget {
  const Favfruits({
    super.key,
    required this.fruitDisplayList,
  });

  final List<Fruit> fruitDisplayList;

  @override
  State<Favfruits> createState() => FavfruitsState();
}

class FavfruitsState extends State<Favfruits> {
  double screenHeight = 0;
  double screenWidth = 0;

  bool startAnimation = true;

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                verticalDirection: VerticalDirection.down,
                children: [
                  const SizedBox(
                    height: 5,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 40,
                      horizontal: 50,
                    ),
                    child: Text(
                      'Frutas Favoritadas',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 1.0,
                            color: Colors.black12,
                          ),
                          Shadow(
                            offset: Offset(5.0, 5.0),
                            blurRadius: 1.0,
                            color: Colors.black12,
                          ),
                        ],
                        color: Colors.black,
                        fontSize: 22,
                        fontFamily: 'Bungee',
                        letterSpacing: 0.4,
                      ),
                    ),
                  ),
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: widget.fruitDisplayList.length,
                    shrinkWrap: true,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return FruitElement(
                        fruitStats: widget.fruitDisplayList[index].fruitStats,
                        fruitName: widget.fruitDisplayList[index].text,
                        screenWidth: screenWidth,
                        calorias: widget.fruitDisplayList[index].calorias,
                        proteina: widget.fruitDisplayList[index].proteina,
                        carboidrato: widget.fruitDisplayList[index].carboidrato,
                        fibra: widget.fruitDisplayList[index].fibra,
                        gordura: widget.fruitDisplayList[index].gordura,
                        porcao: widget.fruitDisplayList[index].porcao,
                        image: widget.fruitDisplayList[index].image,
                        favorite: true,
                        onPressed: () {
                          setState(() {
                            widget.fruitDisplayList
                                .remove(widget.fruitDisplayList[index]);
                          });
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
