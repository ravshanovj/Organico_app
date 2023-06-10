import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //!!! App Bar

        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            toolbarHeight: 65,
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: SafeArea(
                child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.arrow_back_ios),
                    padding: const EdgeInsets.only(
                        left: 20, top: 20.5, bottom: 20.5)),
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    "New Registration",
                    style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ),
        ),

        //!!! Long Text

        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 40, left: 20, right: 20, bottom: 48),
                child: Text(
                  """It looks like you don’t have an account on this                      number. Please let us know some information for a 
secure service.""",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.grey,
                      height: 1.2,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              //!!! Full Name Text

              Padding(
                padding:
                    const EdgeInsets.only(bottom: 10, right: 310, left: 20),
                child: Text(
                  "Full Name",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              //!!! Full Name Box

              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.person_outline_outlined),
                      hintText: "Full Name",
                      hintStyle: GoogleFonts.nunito(
                        textStyle: const TextStyle(
                          color: Color.fromRGBO(146, 146, 157, 1),
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),

              //!!! Email Text

              Padding(
                padding: const EdgeInsets.only(
                    top: 16, bottom: 10, right: 337, left: 20),
                child: Text(
                  "Email",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              //!!! Email Box

              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      hintText: "Email",
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(146, 146, 157, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),

              //!!! Password Text

              Padding(
                padding: const EdgeInsets.only(
                    bottom: 10, top: 16, right: 312, left: 20),
                child: Text(
                  "Password",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),

              //!!! Password Box

              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_outline_rounded),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: "Password",
                    hintStyle: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                        color: Color.fromRGBO(146, 146, 157, 1),
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),

              //!!! Acceptance Text

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 24, bottom: 48, left: 20),
                    child: Container(
                      width: 24.0,
                      height: 24.0,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(6.0)),
                      ),
                    ),
                  ),

                  //!!! Terms and Privacy Text

                  Padding(
                    padding: const EdgeInsets.only(top: 25, bottom: 48, left: 12),
                    child: Container(
                      alignment: Alignment.center,
                      child: Center(
                          child: Text.rich(TextSpan(
                              text: "I accept the ",
                              style: GoogleFonts.nunito(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                ),
                              ),
                              children: <TextSpan>[
                            TextSpan(
                                text: "Terms of Use",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Color(0xFF2ECC71),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    // code to open / launch terms of service link here
                                  }),
                            TextSpan(
                                text: " and ",
                                style: GoogleFonts.nunito(
                                  textStyle: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16,
                                  ),
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: "Privacy Policy",
                                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF2ECC71),
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16,
                                        ),
                                      ),
                                      recognizer: TapGestureRecognizer()
                                        ..onTap = () {
                                          //* code to open / launch privacy policy link here
                                        })
                                ])
                          ]))),
                    ),
                  ),
                ],
              ),

              //!!! Sign Up Button

              Padding(
                padding: const EdgeInsets.only(),
                child: SizedBox(
                  width: 374,
                  height: 52,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      "Sign Up",
                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                    ),
                    backgroundColor: const Color(0xFFAA0023),
                  ),
                ),
              ),

              //!!! Or Use Text

              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  "or use",
                  style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF92929D),
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                ),
              ),

              //!!! Sign Up with Google Button 

              Padding(
                padding: const EdgeInsets.only(top: 24, bottom: 83),
                child: Container(
                  width: 374,
                  height: 52,
                  decoration: BoxDecoration(
                      border: Border.all(color:const  Color(0xFF92929D)),
                      borderRadius: BorderRadius.circular(100)),
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      "Sign Up with Google",
                      style: GoogleFonts.nunito(
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                    ),
                    backgroundColor: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
