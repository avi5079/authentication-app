import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    List images = ["google_logo.png", "facebook_logo.png", "twitter_logo.jpg"];
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
                  image: AssetImage("assets/img/signup.png"),
                  fit: BoxFit.cover,
                  alignment: Alignment.topCenter,
                ),
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(80)),
              ),
            ),
            Container(
                margin: const EdgeInsets.only(top: 40),
                child: CircleAvatar(
                  backgroundColor: Colors.purple.shade400,
                  radius: 70,
                  backgroundImage: const AssetImage("assets/img/profile.png"),
                )),
            Container(
                margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                width: w,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              hintText: "Email",
                              prefixIcon: Icon(Icons.email_rounded,
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
                    ])),
            const SizedBox(height: 20),
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
                child: Text("Sign Up",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    )),
              ),
            ),
            SizedBox(height: h * 0.08),
            RichText(
              text: TextSpan(
                text: "Sign up using one of the following methods",
                style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
              ),
            ),
            Wrap(
              children: List<Widget>.generate(3, (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.purple.shade100,
                    child: CircleAvatar(
                      radius: 20,
                      backgroundImage:
                          AssetImage("assets/img/${images[index]}"),
                    ),
                  ),
                );
              }),
            ),
          ],
        ));
  }
}
