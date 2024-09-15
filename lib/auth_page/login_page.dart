import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:sarpras_app_float_techtonics/auth_page/register_page.dart';
import 'package:sarpras_app_float_techtonics/bottombar.dart';
import 'package:sarpras_app_float_techtonics/homepage.dart';
import 'package:sarpras_app_float_techtonics/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  final TextEditingController nimController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    final String nim = nimController.text;
    final String password = passwordController.text;

    if (nim == '123' && password == '123') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AnimatedBarExample()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('NIM atau password salah.'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/logo1.png"),
          const CustomText(
            text: "Login",
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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "NIM",
              textInputType: TextInputType.number,
              textEditingController: nimController,
              radius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0.0, horizontal: 30),
            child: TextFormFieldWidget(
              label: "Password",
              obscureText: hidePassword,
              textEditingController: passwordController,
              suffixIcon: IconButton(
                icon: Icon(
                  hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
              ),
              radius: const BorderRadius.all(Radius.circular(10)),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 32.0, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomText(
                  text: "Forgot Password",
                  color: Color(0xff2E6EEF),
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20),
            child: TextButton(
              onPressed: _login,
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
                text: 'Login',
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
                  text: "Haven’t any account?",
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    openPage(const RegisterPage(), context);
                  },
                  child: const CustomText(
                    text: "Register",
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
