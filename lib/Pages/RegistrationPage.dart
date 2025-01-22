import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:one_above_tv/Pages/GenderPage.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  FocusNode nodeOne = FocusNode();
  FocusNode nodeTwo = FocusNode();
  FocusNode nodeThree = FocusNode();
  bool _isFullNameTextFieldFilled = false;
  bool _isMobileNumberTextFieldFilled = false;
  bool _isEmailControllerTextFieldFilled = false;
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
              "assets/images/registrationText.png",
              width: screenWidth * 0.7,
            ),
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.1),
              width: screenWidth * 0.65,
              child: Column(
                children: [
                  TextFormField(
                    autocorrect: false,
                    // inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    autofocus: false,
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.text,
                    controller: fullNameController,
                    focusNode: nodeOne,
                    style: const TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontFamily: "Pangram-Regular",
                      fontSize: 27,
                    ),
                    onFieldSubmitted: (value) {
                      FocusScope.of(context).requestFocus(nodeTwo);
                    },
                    onChanged: (value) {
                      if (fullNameController.text.isNotEmpty) {
                        setState(() {
                          _isFullNameTextFieldFilled = true;
                        });
                      } else if (fullNameController.text.isEmpty) {
                        setState(() {
                          _isFullNameTextFieldFilled = false;
                        });
                      } else {
                        setState(() {});
                      }
                    },
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(
                          left: screenWidth * 0.01,
                          right: screenWidth * 0.01,
                          top: screenWidth * 0.025,
                          bottom: screenWidth * 0.025),
                      counterText: '',
                      filled: true,
                      fillColor: const Color(0xFF1C3A6B),
                      hintText: "Full Name",
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 27,
                        color: Color(0xFFFFFFFF).withOpacity(0.6),
                      ),
                      prefixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: screenWidth * 0.02),
                            child: Image.asset(
                              'assets/images/nameLogo.png',
                              width: screenWidth * 0.03,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: screenWidth * 0.02,
                                right: screenWidth * 0.03),
                            child: Container(
                              width: 1.5, // Width of the vertical line
                              height: screenWidth *
                                  0.05, // Height of the vertical line
                              color: const Color(
                                  0xFFFFFFFF), // Color of the vertical line
                            ),
                          ),
                        ],
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.012),
                        borderSide: const BorderSide(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.012),
                        borderSide: const BorderSide(
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.05),
                    child: TextFormField(
                      autocorrect: false,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      autofocus: false,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.number,
                      controller: mobileNumberController,
                      focusNode: nodeTwo,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Pangram-Regular",
                        fontSize: 27,
                      ),
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).requestFocus(nodeThree);
                      },
                      onChanged: (value) {
                        if (mobileNumberController.text.isNotEmpty) {
                          setState(() {
                            _isMobileNumberTextFieldFilled = true;
                          });
                        } else if (mobileNumberController.text.isEmpty) {
                          setState(() {
                            _isMobileNumberTextFieldFilled = false;
                          });
                        } else {
                          setState(() {});
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: screenWidth * 0.01,
                          right: screenWidth * 0.01,
                          top: screenWidth * 0.025,
                          bottom: screenWidth * 0.025,
                        ),
                        counterText: '',
                        filled: true,
                        fillColor: const Color(0xFF1C3A6B),
                        hintText: "Mobile Number",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 27,
                          color: Color(0xFFFFFFFF).withOpacity(0.6),
                        ),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.02),
                              child: Image.asset(
                                'assets/images/mobileLogo.png',
                                width: screenWidth * 0.025,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.02,
                                  right: screenWidth * 0.03),
                              child: Container(
                                width: 1.5, // Width of the vertical line
                                height: screenWidth *
                                    0.05, // Height of the vertical line
                                color: const Color(
                                    0xFFFFFFFF), // Color of the vertical line
                              ),
                            ),
                          ],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.012),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.012),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: screenWidth * 0.05),
                    child: TextFormField(
                      autocorrect: false,
                      autofocus: false,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      focusNode: nodeThree,
                      style: const TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontFamily: "Pangram-Regular",
                        fontSize: 27,
                      ),
                      onFieldSubmitted: (value) {
                        FocusScope.of(context).unfocus();
                      },
                      onChanged: (value) {
                        if (emailController.text.isNotEmpty) {
                          setState(() {
                            _isEmailControllerTextFieldFilled = true;
                          });
                        } else if (emailController.text.isEmpty) {
                          setState(() {
                            _isEmailControllerTextFieldFilled = false;
                          });
                        } else {
                          setState(() {});
                        }
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: screenWidth * 0.01,
                          right: screenWidth * 0.01,
                          top: screenWidth * 0.025,
                          bottom: screenWidth * 0.025,
                        ),
                        counterText: '',
                        filled: true,
                        fillColor: const Color(0xFF1C3A6B),
                        hintText: "E-Mail ID",
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 27,
                          color: Color(0xFFFFFFFF).withOpacity(0.6),
                        ),
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: screenWidth * 0.02),
                              child: Image.asset(
                                'assets/images/emailLogo.png',
                                width: screenWidth * 0.03,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: screenWidth * 0.02,
                                  right: screenWidth * 0.03),
                              child: Container(
                                width: 1.5, // Width of the vertical line
                                height: screenWidth *
                                    0.05, // Height of the vertical line
                                color: const Color(
                                    0xFFFFFFFF), // Color of the vertical line
                              ),
                            ),
                          ],
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.012),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.012),
                          borderSide: const BorderSide(
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: screenWidth * 0.3),
              child: (_isFullNameTextFieldFilled &&
                      _isMobileNumberTextFieldFilled &&
                      _isEmailControllerTextFieldFilled)
                  ? Image.asset(
                      "assets/images/submitButtonFaded.png",
                      width: screenWidth * 0.3,
                    )
                  : GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GenderPage(),
                          ),
                        );
                      },
                      child: Image.asset(
                        "assets/images/submitButton.png",
                        width: screenWidth * 0.3,
                      ),
                    ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: screenWidth * 0.25, right: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      "assets/images/homeButton-2.png",
                      width: screenWidth * 0.22,
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
