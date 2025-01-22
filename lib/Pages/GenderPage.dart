import 'package:flutter/material.dart';
import 'package:one_above_tv/Pages/HomePage.dart';

class GenderPage extends StatefulWidget {
  const GenderPage({super.key});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String _selectedGender = "Male";
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
              margin: EdgeInsets.only(top: screenWidth * 0.05),
              child: Image.asset(
                "assets/images/upperLogo.png",
                width: screenWidth * 0.25,
              ),
            ),
            Image.asset(
              "assets/images/text.png",
              width: screenWidth * 0.5,
            ),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth * 0.03,
                  left: screenWidth * 0.02,
                  right: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedGender = "Male";
                      });
                    },
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        border: Border.all(
                          width: screenWidth * 0.01,
                          color: (_selectedGender == "Male")
                              ? Color(0xFF00EEFF)
                              : Color(0xFFB2B2B2),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/Male.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedGender = "Female";
                      });
                    },
                    child: Container(
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(screenWidth * 0.03),
                        border: Border.all(
                          width: screenWidth * 0.01,
                          color: (_selectedGender == "Female")
                              ? Color(0xFF00EEFF)
                              : Color(0xFFB2B2B2),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/female.png"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.4),
              child: Image.asset(
                "assets/images/submitButton.png",
                width: screenWidth * 0.35,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth * 0.22,
                  left: screenWidth * 0.02,
                  right: screenWidth * 0.02),
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
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
