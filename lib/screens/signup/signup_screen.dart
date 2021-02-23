import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_ui/screens/signup/signup_background.dart';

import '../../constants.dart';
import '../../constants.dart';
import '../../constants.dart';
import '../../constants.dart';
import '../components/background.dart';
import '../components/round_button.dart';
import '../login/already_have_accoun.dart';
import '../login/login_screen.dart';
import '../login/text_field_container.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SignupBackground(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/signup.svg',
                height: size.height * 0.2,
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person, color: kPrimaryColor,),
                        hintText: 'Nom',
                        border: InputBorder.none
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.person, color: kPrimaryColor,),
                        hintText: 'Prénom(s)',
                        border: InputBorder.none
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextField(
                    decoration: InputDecoration(
                        icon: Icon(Icons.email, color: kPrimaryColor,),
                        hintText: 'Email',
                        border: InputBorder.none
                    ),
                  )
              ),
              TextFieldContainer(
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      icon: Icon(Icons.lock, color: kPrimaryColor,),
                      hintText: 'Password',
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.remove_red_eye, color: kPrimaryColor,),
                    ),
                  )
              ),
              RoundButton(
                text: 'S\'inscrire',
                press: () {},
              ),
              AlreadyHaveAccount(
                login: false,
                press: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return LoginScreen();
                      })
                  );
                },
              ),
              SizedBox(height: size.height * 0.03,),
              Container(
                width: size.width * 0.8,
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        height: 1.5,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                        'OR',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        height: 1.8,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.03,),
              Container(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 2,
                          color: kPrimaryColor
                        ),
                        shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/facebook.svg',
                        color: kPrimaryColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: kPrimaryColor
                          ),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/twitter.svg',
                        color: kPrimaryColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      margin: EdgeInsets.only(left: 10, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: kPrimaryColor
                          ),
                          shape: BoxShape.circle
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/google-plus.svg',
                        color: kPrimaryColor,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

}
