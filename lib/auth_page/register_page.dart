import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:sarpras_app_float_techtonics/auth_page/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo1.png"),
          const CustomText(
            text: "Register",
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
          const CustomText(
            text:
                "Selamat Datang Di FacTure,  Tempat penyimpanan sarana dan prasarana terlengkap di kampus",
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Color(0xff939393),
            textAlign: TextAlign.center,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "NIM",
              radius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "Username",
              radius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "Password",
              radius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "Konfirmasi Password",
              radius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                textStyle: const TextStyle(color: Colors.white),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const CustomText(
                text: 'Register',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CustomText(
                  text: "Already have an account?",
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    openPage(const LoginPage(), context);
                  },
                  child: const CustomText(
                    text: "Login",
                    fontWeight: FontWeight.w700,
                    color: Color(0xff2E6EEF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
