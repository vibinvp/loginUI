import 'package:flutter/material.dart';
import 'package:ui_task/screens/login.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            "lib/assets/Path2.png",
                          ))),
                ),
                const Positioned(
                    top: 60,
                    left: 20,
                    child: Text(
                      'Register\nNew Account',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(9)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: 'aaaaaaaaaaaaa',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.3)),
                    label: const Text(
                      "Full Name",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(9)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: 'pay@gmail.com',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.3)),
                    label: const Text(
                      "Email Address",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0),
                        borderRadius: BorderRadius.circular(9)),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9),
                      borderSide: const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: '+91 123456789',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.3)),
                    label: const Text(
                      "Mobile Number",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Have a Referral Code?",
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  )),
            ),
            const SizedBox(
              height: 25,
            ),
            Center(
              child: SizedBox(
                height: 40,
                width: 170,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: const BorderSide(color: Colors.red))),
                    backgroundColor: MaterialStateProperty.all(Colors.red),
                  ),
                  child: const Text(
                    "Register account",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return const LoginScreen();
                    }));
                  },
                  child: RichText(
                      text: const TextSpan(children: [
                    TextSpan(
                      text: 'or ',
                      style: TextStyle(fontSize: 15, color: Colors.red),
                    ),
                    TextSpan(
                      text: "Sign in ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: "with your  account",
                      style: TextStyle(fontSize: 16, color: Colors.red),
                    )
                  ]))),
            ),
          ],
        ),
      ),
    );
  }
}
