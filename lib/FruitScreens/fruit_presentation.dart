import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruitdex/FruitScreens/fruit_element.dart';
import 'package:fruitdex/FruitScreens/table_row_widget.dart';
import 'package:fruitdex/utils/colors.dart';

class FruitPresentation extends StatelessWidget {
  const FruitPresentation({
    super.key,
    required this.element,
    required this.statsNumber,
  });

  final FruitElement element;
  final int statsNumber;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFAFFF6D),
        title: const Text(
          'FRUITDEX',
          style: TextStyle(
            color: Color(0xfffd0658),
            fontFamily: 'Bungee',
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Card(
                  borderOnForeground: true,
                  color: verdeprincipal,
                  surfaceTintColor: verdeBorda,
                  shadowColor: Colors.black,
                  shape: const CircleBorder(),
                  child: SizedBox(
                      width: 250,
                      height: 250,
                      child: Image.asset(element.image)),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 75, vertical: 15),
                  child: Text(
                    'Tabela nutricional ${element.fruitName}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontFamily: 'Bungee',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Table(
                    border: TableBorder.all(
                      color: verdeBorda,
                      width: 3,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    children: [
                      const TableRow(
                        decoration: BoxDecoration(
                          color: verdeprincipal,
                        ),
                        children: [
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Nutrientes',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Bungee',
                                  color: vermelhoLogo,
                                ),
                              ),
                            ),
                          ),
                          TableCell(
                            verticalAlignment:
                                TableCellVerticalAlignment.middle,
                            child: Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                'Quantidade',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontFamily: 'Bungee',
                                  color: vermelhoLogo,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      tableRowWidget(
                        label: 'Calorias',
                        value: element.calorias.toString(),
                      ),
                      tableRowWidget(
                        label: 'Proteinas',
                        value: element.proteina.toString(),
                      ),
                      tableRowWidget(
                        label: 'Carboidrato',
                        value: element.carboidrato.toString(),
                      ),
                      tableRowWidget(
                        label: 'Fibra',
                        value: element.fibra.toString(),
                      ),
                      tableRowWidget(
                        label: 'Gordura',
                        value: element.gordura.toString(),
                      ),
                      tableRowWidget(
                        label: 'Porção',
                        value: element.porcao.toString(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 10,
                  ),
                  child: Text(
                    'Atributos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Bungee',
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.yellowAccent,
                      width: 3,
                    ),
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            'Energia',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            element.fruitStats.energia.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Text(
                            '/5',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildIndicators(
                          element.fruitStats.energia,
                          FontAwesomeIcons.bolt,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlueAccent,
                      width: 3,
                    ),
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            'Refrescância',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            element.fruitStats.refrescancia.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Text(
                            '/5',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildIndicators(
                          element.fruitStats.refrescancia,
                          FontAwesomeIcons.glassWater,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.orangeAccent,
                      width: 3,
                    ),
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            'Vitamina',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            element.fruitStats.vitamina.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Text(
                            '/5',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildIndicators(
                          element.fruitStats.vitamina,
                          Icons.rocket_launch_rounded,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.brown,
                      width: 3,
                    ),
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            'Doce',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            element.fruitStats.doce.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Text(
                            '/5',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildIndicators(
                          element.fruitStats.doce,
                          FontAwesomeIcons.cubesStacked,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(15.0),
                  margin: const EdgeInsets.all(30.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.green,
                      width: 3,
                    ),
                    color: Colors.white10,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.lightGreenAccent.withOpacity(0.8),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            textAlign: TextAlign.center,
                            'Cítrico',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Spacer(),
                          Text(
                            element.fruitStats.citrica.toString(),
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          ),
                          const Text(
                            '/5',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Bungee',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildIndicators(
                          element.fruitStats.citrica,
                          FontAwesomeIcons.solidLemon,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  List<Icon> buildIndicators(int quantity, IconData icon) {
    List<Icon> list = [];

    for (int i = 1; i <= quantity; i++) {
      list.add(
        Icon(
          icon,
          size: 22,
        ),
      );
    }
    for (int i = 1; i <= 5 - quantity; i++) {
      Icon(
        icon,
        color: Colors.grey,
        size: 22,
      );
    }
    return list;
  }
}
