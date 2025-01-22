import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bg.png"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            Image.asset(
              "assets/images/upperLogo.png",
              width: screenWidth * 0.4,
            ),
            Image.asset(
              "assets/images/middleLogo.png",
              width: screenWidth * 0.6,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => ,),);
              },
              child: Container(
                margin: EdgeInsets.only(top: screenWidth * 0.05),
                child: Image.asset(
                  "assets/images/startButton.png",
                  width: screenWidth * 0.4,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
