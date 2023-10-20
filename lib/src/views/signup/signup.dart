import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                height: size.height * 0.1,
              ),
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.grey,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.05,
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
                "Please Signup",
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
                height: size.height * 0.02,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintText: "Confirm Password",
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
                      "Sign Up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ),
              SizedBox(
                height: size.height * 0.05,
              ),

              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.12),
                child: Row(
                  children: [
                    Text(
                      "Alrady have an account ?",
                      style: TextStyle(
                          color: Colors.grey, fontSize: size.width * 0.04),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Login",
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
