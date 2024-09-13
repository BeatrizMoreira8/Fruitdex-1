import 'package:flutter/material.dart';
import 'package:fruitdex/FruitScreens/fruit_presentation.dart';
import 'package:fruitdex/fruit_screen.dart';
import 'package:fruitdex/utils/colors.dart';
import 'package:like_button/like_button.dart';

class FruitElement extends StatefulWidget {
  const FruitElement({
    super.key,
    required this.screenWidth,
    required this.fruitName,
    required this.image,
    required this.calorias,
    required this.proteina,
    required this.carboidrato,
    required this.fibra,
    required this.gordura,
    required this.porcao,
    required this.fruitStats,
    this.onPressed,
    this.index = 0,
    this.icon = Icons.star,
    this.favorite = false,
  });

  final double screenWidth;
  final int index;
  final String calorias;
  final String proteina;
  final String carboidrato;
  final String fibra;
  final String gordura;
  final String porcao;
  final String image;
  final String fruitName;
  final Function? onPressed;
  final IconData icon;
  final FruitStats fruitStats;
  final bool favorite;

  @override
  State<FruitElement> createState() => FruitElementState();
}

class FruitElementState extends State<FruitElement> {
  bool startAnimation = false;

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() {
        startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (
              context,
            ) =>
                FruitPresentation(
              element: FruitElement(
                screenWidth: widget.screenWidth,
                index: widget.index,
                fruitName: widget.fruitName,
                image: widget.image,
                calorias: widget.calorias,
                proteina: widget.proteina,
                carboidrato: widget.carboidrato,
                fibra: widget.fibra,
                gordura: widget.gordura,
                porcao: widget.porcao,
                fruitStats: widget.fruitStats,
              ),
              statsNumber: 0,
            ),
          ),
        );
      },
      child: AnimatedContainer(
        height: 90,
        width: widget.screenWidth,
        curve: Curves.easeInOut,
        duration: Duration(milliseconds: 300 + (widget.index * 100)),
        transform: Matrix4.translationValues(
            startAnimation ? 0 : widget.screenWidth, 0, 0),
        margin: const EdgeInsets.only(
          bottom: 20,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: widget.screenWidth / 20,
        ),
        decoration: BoxDecoration(
          color: verdeprincipal,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Card(
              color: verdeSecundario,
              shadowColor: const Color.fromARGB(255, 0, 0, 0),
              shape: const CircleBorder(),
              child: SizedBox(
                width: 65,
                height: 65,
                child: Image.asset(widget.image),
              ),
            ),
            Text(
              textAlign: TextAlign.left,
              widget.fruitName.toString(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                fontFamily: 'Bungee',
              ),
            ),
            LikeButton(
              likeBuilder: (bool isTapped) {
                if (widget.favorite) {
                  return GestureDetector(
                    onTap: () => widget.onPressed?.call(),
                    child: Icon(
                      widget.icon,
                      color: const Color(0xFFFD0453),
                      size: 30,
                    ),
                  );
                }
                return GestureDetector(
                  onTap: isTapped ? widget.onPressed?.call() : null,
                  child: Icon(
                    widget.icon,
                    color: isTapped ? const Color(0xFFFD0453) : Colors.grey,
                    size: 30,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
