import 'package:flutter/material.dart';
import 'package:login_page/components/float_button.dart';
import 'package:login_page/components/text_form_field.dart';
import 'package:login_page/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber.shade600,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 150),
          decoration: BoxDecoration(
            gradient: linearGradient,
          ),
          child: Column(
            children: [
              Text(
                "Sign In",
                style: myTextStyle,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 100,
                    ),
                    child: MyTextFormField(
                      hintText: 'Enter your Email',
                      iconData: Icons.email,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: MyTextFormField(
                      hintText: 'Enter your password',
                      iconData: Icons.lock,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 20,
                          top: 10,
                        ),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            "Forgot Password ?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                width: 350,
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: buttonStyle,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.pink[200],
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  const Text(
                    "- OR -",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 13,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 13),
                    child: Text(
                      "Sign in with",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 13,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 80, right: 80, top: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        FloatButton(image: 'facebook'),
                        FloatButton(image: 'google'),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
