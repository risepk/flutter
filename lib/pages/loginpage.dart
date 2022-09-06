// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(children: [
            SizedBox(
              height: 20,
            ),
            Text("Welcome $name !",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.black,
                )),
            Image.asset(
              "assets/images/login_image.png",
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 14,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username:",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password:",
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () async {
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      changeButton = false;
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        height: 50,
                        width: changeButton ? 50 : 100,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            // shape: changeButton
                            //     ? BoxShape.circle
                            //     : BoxShape.rectangle,
                            borderRadius:
                                BorderRadius.circular(changeButton ? 25 : 10)),
                        child: changeButton
                            ? Icon(
                                Icons.done,
                                color: Colors.white,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              )),
                  ),

                  // ElevatedButton(
                  //   onPressed: () {
                  //     //print("Hello Pakistan!");
                  //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //   },
                  //   style: TextButton.styleFrom(minimumSize: Size(250, 60)),
                  //   child: Text(
                  //     "Login",
                  //     style: TextStyle(
                  //       fontSize: 30,
                  //     ),
                  //   ),
                  // ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
