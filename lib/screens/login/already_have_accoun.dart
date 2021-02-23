import 'package:flutter/material.dart';

import '../../constants.dart';

class AlreadyHaveAccount extends StatelessWidget {
  final bool login;
  final Function press;

  const AlreadyHaveAccount({
    Key key,
    this.login = true,
    this.press}
      ) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          login ? 'Vous n\'avez pas de compte ?' : 'Avez-vous déjà un compte ?',
          style: TextStyle(
              color: kPrimaryColor
          ),
        ),
        SizedBox(width: 10,),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? 'S\'inscrire' : 'Se connecter',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: kPrimaryColor
            ),
          ),
        )
      ],
    );
  }

}
