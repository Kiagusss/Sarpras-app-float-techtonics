import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';

class DetailPeminjamanPage extends StatefulWidget {
  const DetailPeminjamanPage({super.key});

  @override
  State<DetailPeminjamanPage> createState() => _DetailPeminjamanPageState();
}

class _DetailPeminjamanPageState extends State<DetailPeminjamanPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Column(
          children: [
            AppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: InkWell(
                  onTap: () {
                    backPage(context);
                  },
                  child: const Icon(Icons.arrow_back_ios)),
              centerTitle: true,
              automaticallyImplyLeading: false,
              title: const CustomText(
                text: "Detail Peminjaaman",
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              height: 0.5,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const CustomText(
                      text: "ED9231IK",
                      fontWeight: FontWeight.bold,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 0),
                      decoration: const BoxDecoration(
                          color: Color(0xffDBEAFE),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: const CustomText(
                        text: "Butuh Konfirmasi",
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Color(0xff0165FC),
                      ),
                    ),
                  ],
                ),
                const CustomText(
                  text: "Rab, 12 Apr 2023 - 13.14",
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "Nama Kegiatan",
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                CustomText(
                  text: "Belajar",
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "Jumlah Peserta",
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                CustomText(
                  text: "100",
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "Nama Penanggung Jawab",
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                CustomText(
                  text: "Udin",
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            color: const Color.fromARGB(255, 241, 241, 241),
            width: double.infinity,
            child: const CustomText(
              text: "Detail Barang",
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              clipBehavior: Clip.hardEdge,
              width: 20,
              height: 160,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.asset(
                "assets/images/class-coe.png",
                fit: BoxFit.cover,
              )),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CustomText(
              text: "Center Of Excellence II Lt. 3",
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CustomText(
              text: "Kelas",
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xff898989),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
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
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: CustomText(
              text: "Deskripsi Kelas",
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: CustomText(
              text:
                  "Center of Excellence II Lt. 3 adalah ruangan yang dirancang untuk mendukung kegiatan akademik, dengan jumlah kursi yang disesuaikan berdasarkan jumlah mahasiswa dan luas ruangan. Ruang kecil dapat menampung hingga 40 kursi, sementara ruang besar dapat menampung hingga 60 kursi. Ruangan ini juga dilengkapi dengan papan tulis yang sesuai dengan ukuran ruangan, spidol, dan penghapus papan. Fasilitas tambahan seperti LCD projector, layar proyektor, serta kursi dan meja untuk dosen juga tersedia untuk menunjang proses pembelajaran.",
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
