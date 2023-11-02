import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AssetImage one = AssetImage("images/one.png");
  AssetImage two = AssetImage("images/two.png");
  AssetImage three = AssetImage("images/three.png");
  AssetImage four = AssetImage("images/four.png");
  AssetImage five = AssetImage("images/five.png");
  AssetImage six = AssetImage("images/six.png");

  late AssetImage diceimageone;
  late AssetImage diceImagetwo;

  @override
  void initState() {
    super.initState();
    setState(() {
      diceimageone = one;
      diceImagetwo = one;
    });
  }

  void rollDiceOne() {
    int randomone = (1 + Random().nextInt(6));

    late AssetImage newImageOne;

    switch (randomone) {
      case 1:
        newImageOne = one;
        break;
      case 2:
        newImageOne = two;
        break;
      case 3:
        newImageOne = three;
        break;
      case 4:
        newImageOne = four;
        break;
      case 5:
        newImageOne = five;
        break;
      case 6:
        newImageOne = six;
        break;
    }
    setState(() {
      diceimageone = newImageOne;
    });
  }

  void rollDicetwo() {
    int randomtwo = (1 + Random().nextInt(6));

    late AssetImage newImagetwo;
    switch (randomtwo) {
      case 1:
        newImagetwo = one;
        break;
      case 2:
        newImagetwo = two;
        break;
      case 3:
        newImagetwo = three;
        break;
      case 4:
        newImagetwo = four;
        break;
      case 5:
        newImagetwo = five;
        break;
      case 6:
        newImagetwo = six;
        break;
    }
    setState(() {
      diceImagetwo = newImagetwo;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RG's Dice Roller"),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Image(
                    image: diceimageone,
                    width: 170.0,
                    height: 200.0,
                  ),
                  Image(
                    image: diceImagetwo,
                    width: 168.0,
                    height: 200.0,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 100.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                        fixedSize: MaterialStatePropertyAll(Size(233.0, 43.0)),
                        mouseCursor: MaterialStateMouseCursor.clickable,
                      ),
                      child: Text(
                        "Roll The 1st Dice !",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      onPressed: rollDiceOne,
                    ),
                    ElevatedButton(
                      style: ButtonStyle(
                        padding: MaterialStateProperty.all(
                            EdgeInsetsDirectional.all(10.0)),
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                        fixedSize: MaterialStatePropertyAll(Size(233.0, 43.0)),
                        mouseCursor: MaterialStateMouseCursor.clickable,
                      ),
                      child: Text(
                        "Roll The 2nd Dice !",
                        style: TextStyle(fontSize: 24, color: Colors.black),
                      ),
                      onPressed: rollDicetwo,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
