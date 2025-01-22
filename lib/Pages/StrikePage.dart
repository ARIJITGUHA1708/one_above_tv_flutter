import 'package:flutter/material.dart';

class StrikePage extends StatefulWidget {
  const StrikePage({super.key});

  @override
  State<StrikePage> createState() => _StrikePageState();
}

class _StrikePageState extends State<StrikePage> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.05),
              child: Image.asset(
                "assets/images/upperLogo.png",
                width: screenWidth * 0.26,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.1),
              child: Image.asset(
                "assets/images/text3.png",
                width: screenWidth * 0.6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
