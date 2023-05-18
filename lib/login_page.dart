import 'package:authentication_app/signup_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Container(
                width: w,
                height: 0.3 * h,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/loginimg.jpg"),
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(80)),
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Hello",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 70,
                            fontFamily: "Arial",
                          )),
                      Text("Sign in your account",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey.shade500,
                          )),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          // boxShadow: [
                          //   BoxShadow(
                          //     blurRadius: 10,
                          //     spreadRadius: 7,
                          //     offset: const Offset(0.1, 0.1),
                          //     color: Colors.purple.withOpacity(0.1),
                          //   )]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Username",
                              prefixIcon: Icon(Icons.person,
                                  color: Colors.purple.shade400),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          // boxShadow: [
                          //   BoxShadow(
                          //     blurRadius: 10,
                          //     spreadRadius: 7,
                          //     offset: const Offset(0.1, 0.1),
                          //     color: Colors.purple.withOpacity(0.1),
                          //   )]
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Password",
                              prefixIcon: Icon(Icons.password,
                                  color: Colors.purple.shade400),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.purple.shade300),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.purple.shade100,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(30),
                              )),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(child: Container()),
                          Text("Forgot your password?",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey.shade500,
                              )),
                        ],
                      ),
                    ])),
            const SizedBox(height: 70),
            Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                  image: AssetImage("assets/img/loginbtn.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
              ),
              child: const Center(
                child: Text("Sign In",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(height: h * 0.08),
            RichText(
              text: TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 20),
                  children: [
                    TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.to(() => const SignUpPage()),
                      text: " Create",
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }
}
