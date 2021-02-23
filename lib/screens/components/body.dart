import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/components/round_button.dart';
import 'package:flutter_ui/screens/login/login_screen.dart';
import 'package:flutter_ui/screens/signup/signup_screen.dart';

import 'background.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Flutter UI',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  ),
                ),
                SizedBox(height: size.height * 0.05,),
                SvgPicture.asset(
                  "assets/icons/chat.svg",
                  height: size.height * 0.45,
                ),
                RoundButton(
                  text: 'Se connecter',
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        })
                    );
                  },
                ),
                RoundButton(
                  text: 'S\'inscrire',
                  color: kPrimaryLightColor,
                  textColor: Colors.black,
                  press: () {
                    Navigator.push(
                        context,
                      MaterialPageRoute(builder: (context) {
                        return SignupScreen();
                      })
                    );
                  },
                ),
              ],
            )
        )
    );
  }

}
