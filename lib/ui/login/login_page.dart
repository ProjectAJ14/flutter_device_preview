import 'package:flutter/material.dart';

import '../../utils/strings.dart';
import '../widgets/index.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF1f1f1f),
        body: ListView(
          //responsive padding for mobile and tablet
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width > 768
                ? MediaQuery.of(context).size.width * 0.3
                : 20,
          ),
          children: [
            const SizedBox(
              height: 20,
            ),
            const LogoWidget(
              image: 'assets/logo.png',
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              Strings.appName,
              style: TextStyle(
                fontFamily: 'Rubik-Bold',
                fontSize: 26,
                color: Colors.white,
                letterSpacing: 1.5,
                shadows: [
                  Shadow(offset: Offset(-1.5, -1.5), color: Color(0xFF039d65)),
                  Shadow(offset: Offset(1.5, -1.5), color: Color(0xFF039d65)),
                  Shadow(offset: Offset(1.5, 1.5), color: Color(0xFF039d65)),
                  Shadow(offset: Offset(-1.5, 1.5), color: Color(0xFF039d65)),
                ],
                inherit: false,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Welcome!",
              style: TextStyle(
                fontFamily: 'Rubik-Bold',
                fontSize: 24,
                color: Colors.grey,
                inherit: false,
              ),
            ),
            const Text(
              "Please enter your email & password",
              style: TextStyle(
                fontFamily: 'Rubik-Regular',
                fontSize: 14,
                color: Colors.grey,
                inherit: false,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                prefixIcon: const Icon(
                  Icons.email,
                  color: Color(0xFF039d65),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Email",
                hintStyle: const TextStyle(
                  fontFamily: 'Rubik-Regular',
                  fontSize: 14,
                  color: Colors.grey,
                  inherit: false,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
                prefixIcon: const Icon(
                  Icons.lock,
                  color: Color(0xFF039d65),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide.none,
                ),
                hintText: "Password",
                hintStyle: const TextStyle(
                  fontFamily: 'Rubik-Regular',
                  fontSize: 14,
                  color: Colors.grey,
                  inherit: false,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF039d65),
                padding: const EdgeInsets.symmetric(vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  fontFamily: 'Rubik-Bold',
                  fontSize: 14,
                  color: Colors.white,
                  inherit: false,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
