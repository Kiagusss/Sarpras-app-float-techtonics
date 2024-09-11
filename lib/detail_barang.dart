import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailBarangPage extends StatefulWidget {
  const DetailBarangPage({super.key});

  @override
  State<DetailBarangPage> createState() => _DetailBarangPageState();
}

class _DetailBarangPageState extends State<DetailBarangPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: InkWell(
            onTap: () {
              backPage(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              size: 25,
            ),
          ),
        ),
        title: const CustomText(
          text: "Detail Kelas",
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 35.0, right: 35, top: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Image.asset(
                    "assets/images/class-in.png",
                  ),
                ),
                const CustomText(
                  text: "Center Of Excellence II Lt. 3",
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
                const CustomText(
                  text: "Kelas",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Color(0xff898989),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: const Color(0xffEAEAEA))),
                      margin: const EdgeInsets.only(top: 10),
                      child: const Row(
                        children: [
                          Icon(Icons.chair_alt_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "40",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: const Color(0xffEAEAEA))),
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/images/board-icon.png",
                            width: 20,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const CustomText(
                            text: "1",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: const Color(0xffEAEAEA))),
                      margin: const EdgeInsets.only(top: 10),
                      child: const Row(
                        children: [
                          Icon(Icons.compass_calibration_outlined),
                          SizedBox(
                            width: 5,
                          ),
                          CustomText(
                            text: "2",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: const Color(0xffEAEAEA))),
                      margin: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Image.asset("assets/images/select-border.png"),
                          const SizedBox(
                            width: 5,
                          ),
                          const CustomText(
                            text: "2001 m",
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const CustomText(
                  text: "Deskripsi Kelas",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                const SizedBox(
                  height: 5,
                ),
                const CustomText(
                  text:
                      "Center of Excellence II Lt. 3 adalah ruangan yang dirancang untuk mendukung kegiatan akademik, dengan jumlah kursi yang disesuaikan berdasarkan jumlah mahasiswa dan luas ruangan. Ruang kecil dapat menampung hingga 40 kursi, sementara ruang besar dapat menampung hingga 60 kursi. Ruangan ini juga dilengkapi dengan papan tulis yang sesuai dengan ukuran ruangan, spidol, dan penghapus papan. Fasilitas tambahan seperti LCD projector, layar proyektor, serta kursi dan meja untuk dosen juga tersedia untuk menunjang proses pembelajaran.",
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey,
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Detail Foto",
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                    CustomText(
                      text: "Lihat Semua Foto",
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 155,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/class-in.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 155,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/class-in.png",
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 155,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/class-in.png",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 155,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/class-in.png",
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Row(
          children: [
            const Icon(
              Icons.favorite_border_outlined,
              color: Colors.red,
              size: 40,
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Container(
                  height: 50,
                  padding: const EdgeInsets.symmetric(),
                  decoration: const BoxDecoration(
                    color: Color(0xff2E6EEF),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: const Center(
                    child: CustomText(
                      text: "Pinjam",
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
