import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:fruitdex/FruitScreens/fruit_element.dart';
import 'package:fruitdex/utils/colors.dart';
import 'FruitScreens/fruit_favorites.dart';

class FruitScreen extends StatefulWidget {
  const FruitScreen({Key? key}) : super(key: key);
  @override
  State<FruitScreen> createState() => FruitScreenState();
}

class FruitStats {
  final int energia;
  final int refrescancia;
  final int vitamina;
  final int doce;
  final int citrica;

  const FruitStats({
    required this.energia,
    required this.refrescancia,
    required this.vitamina,
    required this.doce,
    required this.citrica,
  });
}

class Fruit {
  final int index;
  final String text;
  final IconData icon = Icons.star;
  final String image;
  final String calorias;
  final String proteina;
  final String carboidrato;
  final String fibra;
  final String gordura;
  final String porcao;
  final FruitStats fruitStats;

  const Fruit({
    required this.text,
    required this.image,
    required this.calorias,
    required this.proteina,
    required this.carboidrato,
    required this.fibra,
    required this.gordura,
    required this.porcao,
    required this.fruitStats,
    this.index = 0,
  });

  toLowerCase() {}
}

class FruitScreenState extends State<FruitScreen> {
  double screenHeight = 0;
  double screenWidth = 0;
  int primaryPage = 0;
  late PageController pp;

  bool startAnimation = true;

  List<Fruit> fruitList = [
    const Fruit(
      text: "Abacaxi",
      image: "imagens/abacaxi.png",
      calorias: "48",
      proteina: "0,54",
      carboidrato: "12,63",
      fibra: "1,4",
      gordura: "0,12",
      porcao: "1,2 Fatias",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 3,
      ),
    ),
    const Fruit(
      text: "Abacate",
      image: "imagens/abacate.png",
      calorias: "160",
      proteina: "2",
      carboidrato: "8,53",
      fibra: "6,7",
      gordura: "14,66",
      porcao: "10 fatias",
      fruitStats: FruitStats(
        energia: 5,
        refrescancia: 1,
        vitamina: 5,
        doce: 1,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Acerola",
      image: "imagens/acerola.png",
      calorias: "32",
      proteina: "0,4",
      carboidrato: "7,69",
      fibra: "1,1",
      gordura: "0,3",
      porcao: "16 unidades",
      fruitStats: FruitStats(
        energia: 1,
        refrescancia: 1,
        vitamina: 4,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Amora",
      image: "imagens/amora.png",
      calorias: "43",
      proteina: "1,39",
      carboidrato: "9,61",
      fibra: "5,3",
      gordura: "0,49",
      porcao: "7/10 de xícara",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 2,
        vitamina: 2,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Amêndoa",
      image: "imagens/amendoa.png",
      calorias: "578",
      proteina: "21,26",
      carboidrato: "19,74",
      fibra: "11,8",
      gordura: "50,64",
      porcao: "Cerca de 82 unidades",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 1,
        vitamina: 5,
        doce: 1,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Ameixa",
      image: "imagens/ameixa.png",
      calorias: "46",
      proteina: "0,7",
      carboidrato: "11,42",
      fibra: "1,4",
      gordura: "0,28",
      porcao: "Metade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Banana Prata",
      image: "imagens/banana.png",
      calorias: "89",
      proteina: "1,09",
      carboidrato: "22,84",
      fibra: "2,6",
      gordura: "0,33",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 1,
        vitamina: 5,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Banana Nanica",
      image: "imagens/bananananica.png",
      calorias: "92",
      proteina: "1,14",
      carboidrato: "23,62",
      fibra: "2,6",
      gordura: "0,33",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 1,
        vitamina: 5,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Banana Maçã",
      image: "imagens/bananamaca.png",
      calorias: "89",
      proteina: "1,09",
      carboidrato: "22,84",
      fibra: "2,6",
      gordura: "0,33",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 1,
        vitamina: 4,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Cereja",
      image: "imagens/cereja.png",
      calorias: "46",
      proteina: "0,92",
      carboidrato: "11,02",
      fibra: "1,6",
      gordura: "0,44",
      porcao: "20 unidades",
      fruitStats: FruitStats(
        energia: 1,
        refrescancia: 2,
        vitamina: 3,
        doce: 5,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Caqui",
      image: "imagens/caqui.png",
      calorias: "70",
      proteina: "0,58",
      carboidrato: "18,59",
      fibra: "3,9",
      gordura: "0,19",
      porcao: "⅗ de caqui",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 2,
        vitamina: 4,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Carambola",
      image: "imagens/carambola.png",
      calorias: "31",
      proteina: "1,04",
      carboidrato: "6,73",
      fibra: "2,8",
      gordura: "0,33",
      porcao: "Cerca de 1 unidade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 4,
        doce: 3,
        citrica: 4,
      ),
    ),
    const Fruit(
      text: "Caju",
      image: "imagens/caju.png",
      calorias: "43",
      proteina: "0,21",
      carboidrato: "11,41",
      fibra: "2",
      gordura: "0,14",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 2,
        vitamina: 4,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Figo",
      image: "imagens/figo.png",
      calorias: "74",
      proteina: "0,75",
      carboidrato: "19,18",
      fibra: "2,9",
      gordura: "0,3",
      porcao: "2 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 4,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Framboesa",
      image: "imagens/framboesa.png",
      calorias: "52",
      proteina: "1,2",
      carboidrato: "11,94",
      fibra: "6,5",
      gordura: "0,65",
      porcao: "52 unidades",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 4,
        vitamina: 4,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Goiaba",
      image: "imagens/goiaba.png",
      calorias: "68",
      proteina: "2,55",
      carboidrato: "14,32",
      fibra: "5,4",
      gordura: "2,55",
      porcao: "2 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 4,
        doce: 4,
        citrica: 3,
      ),
    ),
    const Fruit(
      text: "Maçã",
      image: "imagens/maca.png",
      calorias: "52",
      proteina: "0,26",
      carboidrato: "13,81",
      fibra: "2,4",
      gordura: "0,17",
      porcao: "1 unidade (pequena)",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 3,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Fruta pão",
      image: "imagens/frutapao.png",
      calorias: "103",
      proteina: "1,07",
      carboidrato: "27,12",
      fibra: "4,9",
      gordura: "0,23",
      porcao: "Cerca de 2 xícara",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 2,
        vitamina: 3,
        doce: 2,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Jaca",
      image: "imagens/jaca.png",
      calorias: "94",
      proteina: "1,47",
      carboidrato: "24,01",
      fibra: "1.6",
      gordura: "0,3",
      porcao: "Cerca de 1 xícara",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 2,
        vitamina: 3,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Jabuticaba",
      image: "imagens/jabuticaba.png",
      calorias: "58",
      proteina: "0,61",
      carboidrato: "15,27",
      fibra: "0,8",
      gordura: "0,14",
      porcao: "Cerca de 1 xícara",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 4,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Kiwi",
      image: "imagens/kiwi.png",
      calorias: "61",
      proteina: "1,14",
      carboidrato: "14,66",
      fibra: "3",
      gordura: "0,52",
      porcao: "15 rodelinhas",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 5,
        doce: 3,
        citrica: 4,
      ),
    ),
    const Fruit(
      text: "Laranja Pera",
      image: "imagens/laranja.png",
      calorias: "37",
      proteina: "0,61",
      carboidrato: "9,73",
      fibra: "1,8",
      gordura: "0,11",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 1,
        refrescancia: 5,
        vitamina: 4,
        doce: 4,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Lima",
      image: "imagens/lima.png",
      calorias: "30",
      proteina: "0,7",
      carboidrato: "10,54",
      fibra: "2,8",
      gordura: "0,2",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 4,
        vitamina: 3,
        doce: 2,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Limão",
      image: "imagens/limao.png",
      calorias: "29",
      proteina: "1,1",
      carboidrato: "9,32",
      fibra: "2,8",
      gordura: "0,3",
      porcao: "14 fatias",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 4,
        vitamina: 3,
        doce: 2,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Lichia",
      image: "imagens/lichia.png",
      calorias: "66",
      proteina: "0,83",
      carboidrato: "16,53",
      fibra: "1,3",
      gordura: "0,44",
      porcao: "11 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 3,
        doce: 4,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Melancia",
      image: "imagens/melancia.png",
      calorias: "30",
      proteina: "0,61",
      carboidrato: "7,55",
      fibra: "0,4",
      gordura: "0,15",
      porcao: "Cerca de 11 bolas",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 5,
        vitamina: 4,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Mamão Papaia",
      image: "imagens/mamao.png",
      calorias: "46",
      proteina: "0,44",
      carboidrato: "11,58",
      fibra: "1,4",
      gordura: "0,14",
      porcao: "1 unidade média",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 4,
        doce: 4,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Manga",
      image: "imagens/manga.png",
      calorias: "65",
      proteina: "0,51",
      carboidrato: "17",
      fibra: "1,8",
      gordura: "0,27",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 3,
        vitamina: 4,
        doce: 5,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Maracujá",
      image: "imagens/maracuja.png",
      calorias: "97",
      proteina: "2,2",
      carboidrato: "23,38",
      fibra: "10,4",
      gordura: "0,7",
      porcao: "6 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 4,
        doce: 3,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Mexerica",
      image: "imagens/tangerina.png",
      calorias: "52",
      proteina: "0,81",
      carboidrato: "13,34",
      fibra: "1,8",
      gordura: "0,31",
      porcao: "1 unidade grande",
      fruitStats: FruitStats(
        energia: 1,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Morango",
      image: "imagens/morango.png",
      calorias: "32",
      proteina: "0,67",
      carboidrato: "7,68",
      fibra: "2",
      gordura: "0,3",
      porcao: "16 unidades",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 4,
        vitamina: 5,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Mirtilo",
      image: "imagens/mirtilo.png",
      calorias: "57",
      proteina: "0,74",
      carboidrato: "14,49",
      fibra: "2,4",
      gordura: "0,33",
      porcao: "Cerca de 73 bagas",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 4,
        vitamina: 5,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Coco",
      image: "imagens/coco.png",
      calorias: "354",
      proteina: "3,33",
      carboidrato: "15,23",
      fibra: "9",
      gordura: "33,49",
      porcao: "1 xícara do coco desfiado",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Nectarina",
      image: "imagens/nectarina.png",
      calorias: "44",
      proteina: "1,06",
      carboidrato: "10,55",
      fibra: "1,7",
      gordura: "0,32",
      porcao: "Cerca de 1/4 da unidade",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 4,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Nêspera",
      image: "imagens/nespera.png",
      calorias: "47",
      proteina: "0,43",
      carboidrato: "12,14",
      fibra: "1,7",
      gordura: "0,2",
      porcao: "8 unidades pequenas",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Pera",
      image: "imagens/pera.png",
      calorias: "58",
      proteina: "0,38",
      carboidrato: "15,46",
      fibra: "3,1",
      gordura: "0,12",
      porcao: "1 unidade grande",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Pêssego",
      image: "imagens/pessego.png",
      calorias: "39",
      proteina: "0,91",
      carboidrato: "9,54",
      fibra: "1.5",
      gordura: "0,25",
      porcao: "1 xicara em cubos",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Pitaya",
      image: "imagens/pitaya.png",
      calorias: "51",
      proteina: "0,78",
      carboidrato: "12,38",
      fibra: "1,7",
      gordura: "0,38",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 3,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Pitanga",
      image: "imagens/pitanga.png",
      calorias: "41",
      proteina: "0,9",
      carboidrato: "10.2",
      fibra: "3.2",
      gordura: "0.2",
      porcao: "10 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 3,
        doce: 3,
        citrica: 3,
      ),
    ),
    const Fruit(
      text: "Pinha",
      image: "imagens/pinha.png",
      calorias: "94",
      proteina: "2,06",
      carboidrato: "23,64",
      fibra: "4,4",
      gordura: "0,29",
      porcao: "3/8 de xícara",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 3,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Pitomba",
      image: "imagens/pitomba.png",
      calorias: "34",
      proteina: "0,4",
      carboidrato: "8,8",
      fibra: "0,5",
      gordura: "0,09",
      porcao: "5 unidades",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 3,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Romã",
      image: "imagens/roma.png",
      calorias: "68",
      proteina: "0,95",
      carboidrato: "17,17",
      fibra: "0,6",
      gordura: "0,3",
      porcao: "5/8 de 1 unidade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 4,
        doce: 4,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Sapoti",
      image: "imagens/sapoti.png",
      calorias: "83",
      proteina: "0,44",
      carboidrato: "19,96",
      fibra: "5,3",
      gordura: "1,1",
      porcao: "5/8 de 1 unidade",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Tomate",
      image: "imagens/tomate.png",
      calorias: "18",
      proteina: "0,88",
      carboidrato: "3,92",
      fibra: "1,2",
      gordura: "0,2",
      porcao: "1 unidade",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 3,
        vitamina: 4,
        doce: 2,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Tamarindo",
      image: "imagens/tamarindo.png",
      calorias: "239",
      proteina: "2,8",
      carboidrato: "62,5",
      fibra: "5,1",
      gordura: "0,6",
      porcao: "48 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 3,
        vitamina: 4,
        doce: 3,
        citrica: 4,
      ),
    ),
    const Fruit(
      text: "Toranja",
      image: "imagens/toranja.png",
      calorias: "32",
      proteina: "0,63",
      carboidrato: "8,08",
      fibra: "1,1",
      gordura: "0.1",
      porcao: "1/2 unidade pequena",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 4,
        doce: 2,
        citrica: 5,
      ),
    ),
    const Fruit(
      text: "Uva Itália",
      image: "imagens/uva.png",
      calorias: "68",
      proteina: "0,71",
      carboidrato: "17,92",
      fibra: "0,9",
      gordura: "0,16",
      porcao: "5/8 de xícara de uva",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 3,
        doce: 4,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Uva passa",
      image: "imagens/uvapassa.png",
      calorias: "299",
      proteina: "3,07",
      carboidrato: "79,18",
      fibra: "3,7",
      gordura: "0,46",
      porcao: "Cerca de 190 unidades",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 2,
        vitamina: 4,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Goji Berry",
      image: "imagens/gojiberry.png",
      calorias: "321",
      proteina: "14,07",
      carboidrato: "69,21",
      fibra: "4,6",
      gordura: "1,79",
      porcao: "1 xícara cheia de goji berry",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 2,
        vitamina: 4,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Tâmara",
      image: "imagens/tamara.png",
      calorias: "282",
      proteina: "2,45",
      carboidrato: "75,03",
      fibra: "7",
      gordura: "0,39",
      porcao: "12 unidades",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 2,
        vitamina: 2,
        doce: 5,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Umbu",
      image: "imagens/umbu.png",
      calorias: "37",
      proteina: "0,56",
      carboidrato: "9,36",
      fibra: "1,1",
      gordura: "0,22",
      porcao: "Cerca de 3 unidades",
      fruitStats: FruitStats(
        energia: 2,
        refrescancia: 2,
        vitamina: 2,
        doce: 3,
        citrica: 2,
      ),
    ),
    const Fruit(
      text: "Damasco",
      image: "imagens/damasco.png",
      calorias: "48",
      proteina: "1,4",
      carboidrato: "11,12",
      fibra: "2",
      gordura: "0,39",
      porcao: "3 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 2,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Avelã",
      image: "imagens/avela.png",
      calorias: "628",
      proteina: "14,95",
      carboidrato: "16,7",
      fibra: "9,7",
      gordura: "60,75",
      porcao: "Cerca de 71,5 unidades",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 1,
        vitamina: 2,
        doce: 3,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Macadâmia",
      image: "imagens/macadamia.png",
      calorias: "718",
      proteina: "7,91",
      carboidrato: "13,82",
      fibra: "8,6",
      gordura: "75,77",
      porcao: "35 unidades do miolo",
      fruitStats: FruitStats(
        energia: 4,
        refrescancia: 1,
        vitamina: 2,
        doce: 2,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Pequi",
      image: "imagens/pequi.png",
      calorias: "203",
      proteina: "1,98",
      carboidrato: "12,95",
      fibra: "4,1",
      gordura: "17,5",
      porcao: "Cerca de 6,5 unidades",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 1,
        vitamina: 2,
        doce: 2,
        citrica: 1,
      ),
    ),
    const Fruit(
      text: "Melão",
      image: "imagens/melao.png",
      calorias: "34",
      proteina: "0,84",
      carboidrato: "8,16",
      fibra: "0,9",
      gordura: "0,19",
      porcao: "1/8 meia lua",
      fruitStats: FruitStats(
        energia: 3,
        refrescancia: 4,
        vitamina: 3,
        doce: 4,
        citrica: 1,
      ),
    )
  ];

  List<Fruit> filterFruit = [];
  List<Fruit> favoriteFruits = [];

  @override
  void initState() {
    pp = PageController(initialPage: primaryPage);
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {
          startAnimation = true;
          super.initState();
        });
      },
    );
    filterFruit = fruitList;
  }

  setprimaryPage(page) {
    setState(() {
      primaryPage = page;
    });
  }

  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: verdeprincipal,
        title: const Text(
          'FRUITDEX',
          style: TextStyle(
            color: vermelhoLogo,
            fontFamily: 'Bungee',
            fontSize: 24,
          ),
        ),
      ),
      body: SafeArea(
        child: PageView(
          controller: pp,
          onPageChanged: setprimaryPage,
          children: [
            SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth / 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextField(
                    controller: controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      fillColor: verdeprincipal,
                      iconColor: verdeprincipal,
                      labelText: 'Pesquisar',
                      labelStyle: TextStyle(fontFamily: 'Bungee'),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: verdeprincipal),
                      ),
                      suffixIcon: Icon(Icons.search),
                    ),
                    onChanged: searchFruit,
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ListView.builder(
                    scrollDirection: Axis.vertical,
                    physics: const BouncingScrollPhysics(),
                    itemCount: filterFruit.length,
                    shrinkWrap: true,
                    itemBuilder: (
                      context,
                      index,
                    ) {
                      return FruitElement(
                        fruitName: filterFruit[index].text,
                        screenWidth: screenWidth,
                        calorias: filterFruit[index].calorias,
                        proteina: filterFruit[index].proteina,
                        carboidrato: filterFruit[index].carboidrato,
                        fibra: filterFruit[index].fibra,
                        gordura: filterFruit[index].gordura,
                        porcao: filterFruit[index].porcao,
                        icon: filterFruit[index].icon,
                        image: filterFruit[index].image,
                        onPressed: () {
                          if (!favoriteFruits.contains(filterFruit[index])) {
                            favoriteFruits.add(filterFruit[index]);
                          }
                        },
                        fruitStats: filterFruit[index].fruitStats,
                      );
                    },
                  ),
                ],
              ),
            ),
            Favfruits(
              fruitDisplayList: favoriteFruits,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: primaryPage,
        backgroundColor: verdeprincipal,
        buttonBackgroundColor: vermelhoLogo,
        color: verdeSecundario,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (page) {
          pp.animateToPage(
            page,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
          );
        },
        items: const [
          Icon(
            Icons.home,
            color: verdeprincipal,
          ),
          Icon(
            Icons.star,
            color: verdeprincipal,
          ),
        ],
      ),
    );
  }

  void searchFruit(String query) {
    final suggestions = fruitList.where(
      (item) {
        final fruittext = item.text.toLowerCase();
        final input = query.toLowerCase();
        return fruittext.contains(input);
      },
    ).toList();
    setState(
      () => filterFruit = suggestions,
    );
  }
}
