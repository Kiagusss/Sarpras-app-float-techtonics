import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sarpras_app_float_techtonics/auth_page/login_page.dart';

class OnBoard1 extends StatefulWidget {
  const OnBoard1({super.key});

  @override
  State<OnBoard1> createState() => _OnBoard1State();
}

class _OnBoard1State extends State<OnBoard1> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final Color warna = const Color(0xff4852A1);

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => const LoginPage()),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      showSkipButton: true,
      skip: const Text(
        "Lewati",
        style: TextStyle(fontSize: 18, color: Colors.blue),
      ),
      next: const Text("Lanjut",
          style: TextStyle(fontSize: 18, color: Colors.blue)),
      done: const Text("Mulai",
          style: TextStyle(fontSize: 18, color: Colors.white)),
      doneStyle: TextButton.styleFrom(
          backgroundColor: Colors.blue, minimumSize: const Size(100, 50)),
      onDone: () {
        _onIntroEnd(context);
      },
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(25.0, 10.0),
        activeColor: const Color(0xff2E6EEF),
        color: const Color(0xffC0D6FF),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(25.0)),
      ),
      key: introKey,
      pages: [
        PageViewModel(
            title: '',
            bodyWidget: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset("assets/images/Sapiens1.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CustomText(
                        text: "Merasa Lelah Mengatur Sarpras?",
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: 31,
                            fontWeight: FontWeight.w700),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: CustomText(
                        text:
                            "Ketika Anda merasa mengelola sarpras Anda sangat sulit, kami punya solusinya",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )),
        PageViewModel(
            title: '',
            bodyWidget: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset("assets/images/Sapiens2.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CustomText(
                        text: "Butuh Cepat Untuk Meminjam Sarpras?",
                        style: TextStyle(
                            color: Color(0xff007AFF),
                            fontSize: 31,
                            fontWeight: FontWeight.w700),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 5),
                      child: CustomText(
                        text:
                            "Aplikasi kami memudahkan pengguna dalam meminjam Sarana Prasarana dengan cepat",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )),
        PageViewModel(
            title: '',
            bodyWidget: Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: Image.asset("assets/images/Sapiens3.png"),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: CustomText(
                        text: "Selamat Datang di FacTure",
                        style: TextStyle(
                            color: Color(0xff2E6EEF),
                            fontSize: 31,
                            fontWeight: FontWeight.w700),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: CustomText(
                        text:
                            "Sebuah aplikasi sarana prasarana kampus yang menghubungkan dengan mahasiswa",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            )),
      ],
      showNextButton: true,
      showDoneButton: true,
    );
  }
}
