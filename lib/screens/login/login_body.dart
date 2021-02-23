import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/constants.dart';
import 'package:flutter_ui/screens/components/round_button.dart';
import 'package:flutter_ui/screens/login/login_background.dart';
import 'package:flutter_ui/screens/login/text_field_container.dart';

class LoginBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: LoginBackground(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Login to Flutter UI',
              style: TextStyle(
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            SvgPicture.asset(
              'assets/icons/login.svg',
              height: size.height * 0.35,
            ),
            TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person, color: kPrimaryColor,),
                  hintText: 'Entrez votre email',
                  border: InputBorder.none
                ),
              ),
            ),
            TextFieldContainer(
                child: Expanded(
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock, color: kPrimaryColor,),
                          hintText: 'Entrez votre mot de passe',
                          border: InputBorder.none,
                        suffixIcon: IconButton(
                          onPressed: () {  },
                          icon: Icon(Icons.remove_red_eye, color: kPrimaryColor,),
                        )
                      ),
                    )
                ),
            ),
            RoundButton(
              text: 'Se connecter',
              press: () {},
            )
          ],
        ),
      ),
    );
  }

}
