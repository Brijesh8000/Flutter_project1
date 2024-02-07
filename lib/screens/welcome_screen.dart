import 'package:auth_screens_tutorial/constants.dart';
import 'package:auth_screens_tutorial/screens/login_screen.dart';
import 'package:auth_screens_tutorial/screens/signup_screen.dart';
import 'package:auth_screens_tutorial/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/welcome.svg",
            height: 150,
          ),
          const SizedBox(height: 20),
          const Text(
            "Welcome!",
            style: TextStyle(
              fontSize: kbigFontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Please login or signup",
            style: TextStyle(fontSize: kmediumFontSize),
          ),
          const SizedBox(height: 20),
          CustomButton(
            color: kprimaryColor,
            textColor: Colors.white,
            text: "Login",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
          ),
          const SizedBox(height: 10),
          CustomButton(
            color: ksecondryColor,
            textColor: Colors.black,
            text: "Sign Up",
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SignupScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
