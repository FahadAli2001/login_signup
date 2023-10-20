import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_signup/src/views/signup/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: size.height * 0.15,
              ),

              Text(
                "Hey There",
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * 0.04),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),

              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.grey.shade900,
                    fontWeight: FontWeight.w900,
                    fontSize: size.width * 0.08),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.grey)),
              ),

              SizedBox(
                height: size.height * 0.02,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.grey),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.grey,
                    )),
              ),

              SizedBox(
                height: size.height * 0.05,
              ),
              //
              SizedBox(
                width: size.width * 0.85,
                child: CupertinoButton(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(10),
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUp()));
                    }),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Text(
                "or with",
                style: TextStyle(
                    color: Colors.grey.shade800,
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.04),
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              const FaIcon(
                FontAwesomeIcons.google,
                color: Colors.orange,
                size: 35,
              ),
              //
              SizedBox(
                height: size.height * 0.02,
              ),
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(
                          color: Colors.grey, fontSize: size.width * 0.04),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            color: Colors.grey.shade900,
                            fontWeight: FontWeight.bold,
                            fontSize: size.width * 0.04),
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
