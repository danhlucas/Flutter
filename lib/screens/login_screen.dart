import 'package:create_login/pallete.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:create_login/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(
          image: 'assets/images/login_page.jpg',
        ),
        // SizedBox(
        //   height: 10,
        // ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Flexible(
                child: Center(
                  child: Text(
                    'League of Legends',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInputField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputType: TextInputType.name,
                    inputAction: TextInputAction.done,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "ForgotPassword"),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RoundedButton(
                    buttonName: 'Login',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => Navigator.pushNamed(context, "CreateNewAccount"),
                child: Container(
                  child: Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: kWhile),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Text(
                    '- OR -',
                    style: KLabelStyle,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Sign in with',
                    style: Kbody2Text,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Icon(
                      FontAwesomeIcons.google,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20),
                  Container(
                    child: Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
            ],
          ),
        )
      ],
    );
  }
}
