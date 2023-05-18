import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
            const SizedBox(height: 40),
            Container(
                width: w,
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Welcome",
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54)),
                    Text("username@gmail.com",
                        style: TextStyle(
                            fontSize: 20, color: Colors.grey.shade500)),
                  ],
                )),
            const SizedBox(height: 150),
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
                child: Text("Sign Out",
                    style: TextStyle(
                      fontSize: 36,
                      color: Colors.white,
                    )),
              ),
            ),
          ],
        ));
  }
}
