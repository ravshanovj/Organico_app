import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              //!!! Picture of Girl

              Padding(
                padding: const EdgeInsets.only(top: 46, left: 33, right: 33),
                child: SizedBox(
                  width: 349,
                  height: 318.11,
                  // decoration: const BoxDecoration(
                  //     image: DecorationImage(
                  //         image: AssetImage("assets/girl.png"))),
                  child: SvgPicture.asset('assets/girl.svg'),
                ),
              ),

              //!!! Welcome Text

              Padding(
                padding:
                    const EdgeInsets.only(top: 65.89, right: 300, left: 20),
                child: Text(
                  "Welcome",
                  style: GoogleFonts.nunito(
                    textStyle: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),

              //!!! Long Text

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 16, right: 20),
                child: Text(
                  """Welcome to Organico Mobile Apps. Please fill in                     the field below to sign in.""",
                  style: GoogleFonts.nunito(
                      textStyle: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16)),
                ),
              ),

              //!!! Email Box

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email_outlined),
                      hintText: "Email",
                      hintStyle: GoogleFonts.nunito(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: const Color.fromRGBO(146, 146, 157, 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100))),
                ),
              ),

              //!!! Password Box

              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock_person_outlined),
                    suffixIcon: const Icon(Icons.remove_red_eye_outlined),
                    hintText: "Password",
                    hintStyle: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color.fromRGBO(146, 146, 157, 1)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),

              //!!! Forgot Password Text

              Padding(
                padding: const EdgeInsets.only(left: 266, right: 20, top: 24),
                child: InkWell(
                  onTap: () {},
                  child: Text(
                    "Forgot Password",
                    style: GoogleFonts.nunito(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromRGBO(46, 204, 113, 1),
                    ),
                  ),
                ),
              ),

              //!!! Sign In Box

              Padding(
                padding: const EdgeInsets.only(top: 44, bottom: 45),
                child: SizedBox(
                  width: 374,
                  height: 52,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      "Sign In",
                      style: GoogleFonts.nunito(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    backgroundColor: const Color.fromRGBO(170, 0, 35, 1),
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
