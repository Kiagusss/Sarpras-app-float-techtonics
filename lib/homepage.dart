import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sarpras_app_float_techtonics/coba_navbar.dart';
import 'package:sarpras_app_float_techtonics/detail_barang.dart';
import 'package:sarpras_app_float_techtonics/detail_peminjaman.dart';
import 'package:sarpras_app_float_techtonics/pilihan_page/alat_page.dart';
import 'package:sarpras_app_float_techtonics/pilihan_page/kelas_page.dart';
import 'package:sarpras_app_float_techtonics/pilihan_page/lab_page.dart';
import 'package:sarpras_app_float_techtonics/pilihan_page/lapangan_page.dart';
import 'package:sarpras_app_float_techtonics/profile_page.dart';
import 'package:sarpras_app_float_techtonics/transaction/transaction_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        openPage(const ProfilePage(), context);
                      },
                      child: const CircleAvatar(
                        radius: 25,
                        backgroundImage:
                            AssetImage("assets/images/people-image.png"),
                      ),
                    ),
                    const Column(
                      children: [
                        CustomText(
                          text: "Location",
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on),
                            CustomText(
                              text: "Fakultas Teknik, Cilegon",
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ],
                        )
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        openPage(const MyHomePage(), context);
                      },
                      child: const Icon(
                        Icons.notifications,
                        color: Color(0xff2E6EEF),
                        size: 25,
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xffF2F3FF),
                      prefixIcon: const Icon(Icons.search),
                      suffixIcon: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff2E6EEF),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: const Icon(
                          Icons.tune,
                          color: Colors.white,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                        borderSide: BorderSide.none,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 15.0, horizontal: 10.0),
                    ),
                  ),
                ),
                const CustomText(
                  text: "Selamat Siang, Maman Supratman",
                  color: Color(0xff2E6EEF),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openPage(const KelasPage(), context);
                          },
                          child: const CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xffDBEAFE),
                            child: Icon(
                              Icons.class_,
                              color: Color(0xff2E6EEF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomText(
                          text: "Kelas",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openPage(const LapanganPage(), context);
                          },
                          child: const CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xffDBEAFE),
                            child: Icon(
                              Icons.fitness_center_outlined,
                              color: Color(0xff2E6EEF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomText(
                          text: "Lapangan",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openPage(const LabPage(), context);
                          },
                          child: const CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xffDBEAFE),
                            child: Icon(
                              Icons.science_outlined,
                              color: Color(0xff2E6EEF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomText(
                          text: "Lab",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        InkWell(
                          onTap: () {
                            openPage(const AlatPage(), context);
                          },
                          child: const CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xffDBEAFE),
                            child: Icon(
                              Icons.handyman_outlined,
                              color: Color(0xff2E6EEF),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const CustomText(
                          text: "Alat",
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        openPage(const TransactionListPage(), context);
                      },
                      child: const Column(
                        children: [
                          CircleAvatar(
                            radius: 32,
                            backgroundColor: Color(0xffDBEAFE),
                            child: Icon(
                              Icons.fact_check_outlined,
                              color: Color(0xff2E6EEF),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          CustomText(
                            text: "Transaksi",
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Peminjaman Terakhir",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Lihat Semua",
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              width: 69,
                              height: 50,
                              child: Image.asset(
                                "assets/images/class-coe.png",
                              )),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomText(
                                text: "ID : 123455312",
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              CustomText(
                                text: "Ruang Kelas COE-3-III",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              CustomText(
                                text: "Matematika Diskrit",
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontSize: 12,
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const CustomText(
                        text: "Waktu Peminjaman",
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            text: "Selasa, 31 Mei 2025, Pkl 20.00-21.00",
                            fontWeight: FontWeight.bold,
                            color: Color(0xff699BF7),
                            fontSize: 12,
                          ),
                          ButtonWidget(
                            onPressed: () {
                              openPage(const DetailPeminjamanPage(), context);
                            },
                            backGroundColor: Colors.white,
                            fontSize: 20,
                            borderRadius: 5,
                            borderColor: const Color(0xff0165FC),
                            borderWidth: 2,
                            textColor: const Color(0xff699BF7),
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: const CustomText(
                              text: "Lihat Detail",
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff0165FC),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Rekomendasi Peminjaman",
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Lihat Semua",
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          height: 230,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 5,
                                blurRadius: 8,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    topLeft: Radius.circular(20),
                                  ),
                                ),
                                width: 200,
                                child:
                                    Image.asset("assets/images/class-coe.png"),
                              ),
                              const CustomText(
                                padding: EdgeInsets.only(left: 10),
                                text: "Ruang Kelas COE-3-III",
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 6.0),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 20,
                                      color: Color(0xff2E6EEF),
                                    ),
                                    CustomText(
                                      text: "Gedung Center Of Excellence",
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold,
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 10),
                                width: 200,
                                child: ButtonWidget(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 5),
                                  borderRadius: 5,
                                  onPressed: () {
                                    openPage(const DetailBarangPage(), context);
                                  },
                                  backGroundColor: const Color(0xff007AFF),
                                  child: const CustomText(
                                    text: "Lihat Detail",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      // Jarak antar Container
                      const SizedBox(width: 10),

                      // Container kedua
                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              width: 200,
                              child: Image.asset("assets/images/class-coe.png"),
                            ),
                            const CustomText(
                              padding: EdgeInsets.only(left: 10),
                              text: "Ruang Kelas COE-3-III",
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: Color(0xff2E6EEF),
                                  ),
                                  CustomText(
                                    text: "Gedung Center Of Excellence",
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              width: 200,
                              child: ButtonWidget(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                borderRadius: 5,
                                onPressed: () {},
                                backGroundColor: const Color(0xff007AFF),
                                child: const CustomText(
                                  text: "Lihat Detail",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Jarak antar Container
                      const SizedBox(width: 10),

                      // Container ketiga
                      Container(
                        height: 230,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 8,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              clipBehavior: Clip.hardEdge,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(20),
                                  topLeft: Radius.circular(20),
                                ),
                              ),
                              width: 200,
                              child: Image.asset("assets/images/class-coe.png"),
                            ),
                            const CustomText(
                              padding: EdgeInsets.only(left: 10),
                              text: "Ruang Kelas COE-3-III",
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 6.0),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    size: 20,
                                    color: Color(0xff2E6EEF),
                                  ),
                                  CustomText(
                                    text: "Gedung Center Of Excellence",
                                    fontSize: 11,
                                    fontWeight: FontWeight.bold,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              width: 200,
                              child: ButtonWidget(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                borderRadius: 5,
                                onPressed: () {},
                                backGroundColor: const Color(0xff007AFF),
                                child: const CustomText(
                                  text: "Lihat Detail",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),

                      // Jarak akhir dari kanan
                      const SizedBox(width: 10),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
