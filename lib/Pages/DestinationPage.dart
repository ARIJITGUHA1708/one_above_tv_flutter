import 'package:flutter/material.dart';
import 'package:one_above_tv/Pages/HomePage.dart';
import 'package:one_above_tv/Pages/StrikePage.dart';

class DestinationPage extends StatefulWidget {
  const DestinationPage({super.key});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  String _selectedDestination = "Africa";
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
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.02),
              child: Image.asset(
                "assets/images/upperLogo.png",
                width: screenWidth * 0.3,
              ),
            ),
            Container(
              child: Image.asset(
                "assets/images/text2.png",
                width: screenWidth * 0.6,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.03),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedDestination = "Africa";
                          });
                        },
                        child: Container(
                          height: screenWidth * 0.28,
                          width: screenWidth * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: screenWidth * 0.006,
                              color: (_selectedDestination == "Africa")
                                  ? Color(0xFF00EEFF)
                                  : Colors.transparent,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/images/africaLogo.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                            child: Text(
                              "Africa",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: screenWidth * 0.04),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedDestination = "Bali";
                          });
                        },
                        child: Container(
                          height: screenWidth * 0.28,
                          width: screenWidth * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: screenWidth * 0.006,
                              color: (_selectedDestination == "Bali")
                                  ? Color(0xFF00EEFF)
                                  : Colors.transparent,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/baliLogo.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                            child: Text(
                              "Bali",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: screenWidth * 0.04),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _selectedDestination = "Asia";
                          });
                        },
                        child: Container(
                          height: screenWidth * 0.28,
                          width: screenWidth * 0.28,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: screenWidth * 0.006,
                              color: (_selectedDestination == "Asia")
                                  ? Color(0xFF00EEFF)
                                  : Colors.transparent,
                            ),
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage("assets/images/asiaLogo.png"),
                                fit: BoxFit.cover),
                          ),
                          child: Center(
                            child: Text(
                              "Asia",
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF),
                                  fontSize: screenWidth * 0.04),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.05),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedDestination = "UK";
                            });
                          },
                          child: Container(
                            height: screenWidth * 0.28,
                            width: screenWidth * 0.28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: screenWidth * 0.006,
                                color: (_selectedDestination == "UK")
                                    ? Color(0xFF00EEFF)
                                    : Colors.transparent,
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage("assets/images/ukLogo.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text(
                                "UK",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: screenWidth * 0.04),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedDestination = "USA";
                            });
                          },
                          child: Container(
                            height: screenWidth * 0.28,
                            width: screenWidth * 0.28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: screenWidth * 0.006,
                                color: (_selectedDestination == "USA")
                                    ? Color(0xFF00EEFF)
                                    : Colors.transparent,
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/usaLogo.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text(
                                "USA",
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: screenWidth * 0.04),
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedDestination = "MiddleEast";
                            });
                          },
                          child: Container(
                            height: screenWidth * 0.28,
                            width: screenWidth * 0.28,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: screenWidth * 0.006,
                                color: (_selectedDestination == "MiddleEast")
                                    ? Color(0xFF00EEFF)
                                    : Colors.transparent,
                              ),
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/middleEastLogo.png"),
                                  fit: BoxFit.cover),
                            ),
                            child: Center(
                              child: Text(
                                "Middle\nEast",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF),
                                    fontSize: screenWidth * 0.04),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => StrikePage(),
                  ),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: screenWidth * 0.22),
                child: Image.asset(
                  "assets/images/submitButton.png",
                  width: screenWidth * 0.3,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: screenWidth * 0.02,
                  right: screenWidth * 0.02,
                  top: screenWidth * 0.2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/backButton-2.png",
                      width: screenWidth * 0.2,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                          (Route<dynamic> route) => false);
                    },
                    child: Image.asset(
                      "assets/images/homeButton-2.png",
                      width: screenWidth * 0.2,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
