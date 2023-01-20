import 'package:flutter/material.dart';
import 'package:ui_task/screens/register.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool? isChecked = false;

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                    top: 80,
                    left: 20,
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    )),
                const Positioned(
                    top: 130,
                    left: 20,
                    child: Text(
                      'Please Login To Using App',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )),
              ],
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
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
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
              height: 40,
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
                      borderSide:
                          const BorderSide(color: Colors.red, width: 2.0),
                    ),
                    hintText: '************',
                    hintStyle: TextStyle(color: Colors.red.withOpacity(0.3)),
                    label: const Text(
                      "Password",
                      style: TextStyle(fontSize: 25, color: Colors.red),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Checkbox(
                        value: isChecked,
                        activeColor: Colors.red,
                        onChanged: ((newbool) {
                          setState(() {
                            isChecked = newbool;
                          });
                        })),
                    const Text(
                      'Remember',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Text(
                    "Forget Password?",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          side: const BorderSide(color: Colors.red))),
                  backgroundColor: MaterialStateProperty.all(Colors.red),
                ),
                child: const Text(
                  "Sing in",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            const SizedBox(height: 20,),
            TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return const RegisterScreen();
                  }));
                },
                child: RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                    text: 'or ',
                    style: TextStyle(fontSize: 15, color: Colors.red),
                  ),
                  TextSpan(
                    text: "Register a new account",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  )
                ]))),
          ],
        ),
      ),
    );
  }
}
