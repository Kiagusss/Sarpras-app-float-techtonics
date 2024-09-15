import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:sarpras_app_float_techtonics/detail_peminjaman.dart';

class TransactionListPages extends StatefulWidget {
  const TransactionListPages({super.key});

  @override
  State<TransactionListPages> createState() => _TransactionListPagesState();
}

class _TransactionListPagesState extends State<TransactionListPages>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFDFDFD),
      appBar: AppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: const TextFormFieldWidget(
          label: "Cari",
          isWithLabel: false,
          prefixIcon: Icon(Icons.search),
          radius: BorderRadius.all(Radius.circular(10)),
        ),
        actions: const [
          Icon(Icons.filter_alt_outlined),
          CustomText(text: "Filter"),
          SizedBox(width: 20),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: TabBar(
              isScrollable: true,
              controller: _tabController,
              labelColor: const Color(0xff2E6EEF),
              unselectedLabelColor: Colors.grey,
              indicatorColor: const Color(0xff2E6EEF),
              tabs: const [
                Tab(
                  text: "Menunggu Konfirmasi",
                ),
                Tab(
                  text: "Sedang Digunkan",
                ),
                Tab(
                  text: "Selesai",
                ),
                Tab(
                  text: "Batal",
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Menunggu Konfirmasi",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              openPage(const DetailPeminjamanPage(), context);
                            },
                            child: Container(
                                height: 50,
                                padding: const EdgeInsets.symmetric(),
                                decoration: const BoxDecoration(
                                  color: Color(0xff2E6EEF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                ),
                                child: const Center(
                                  child: CustomText(
                                    text: "Lihat Detail",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Menunggu Konfirmasi",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Menunggu Konfirmasi",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Menunggu Konfirmasi",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // Sedang Digunakan
                ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffCFFDE1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Sedang Digunakan",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff285430),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xffCFFDE1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Selesai",
                                  fontSize: 18,
                                  color: Color(0xff285430),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffCFFDE1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Sedang Digunakan",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff285430),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xffCFFDE1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Selesai",
                                  fontSize: 18,
                                  color: Color(0xff285430),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffCFFDE1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Sedang Digunakan",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff285430),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xffCFFDE1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Selesai",
                                  fontSize: 18,
                                  color: Color(0xff285430),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffCFFDE1),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Sedang Digunakan",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff285430),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xffCFFDE1),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Selesai",
                                  fontSize: 18,
                                  color: Color(0xff285430),
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // Selesai
                ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Selesai",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Selesai",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Selesai",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: const BoxDecoration(
                                              color: Color(0xffDBEAFE),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Selesai",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Color(0xff0165FC),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
                // Batal
                ListView(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.25),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Batal",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.25),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Batal",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.25),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Batal",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Container(
                              height: 50,
                              padding: const EdgeInsets.symmetric(),
                              decoration: const BoxDecoration(
                                color: Color(0xff2E6EEF),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                              ),
                              child: const Center(
                                child: CustomText(
                                  text: "Lihat Detail",
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 12),
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                          border: Border.all(color: Colors.grey, width: 0.5)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      clipBehavior: Clip.hardEdge,
                                      width: 110,
                                      height: 140,
                                      decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Image.asset(
                                        "assets/images/class-coe.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin:
                                              const EdgeInsets.only(left: 0),
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.red.withOpacity(0.25),
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20))),
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: const CustomText(
                                            text: "Batal",
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12,
                                            color: Colors.red,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Belajar Databases",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text: "Ruang COE 3 lt.3",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Color(0xff0165FC),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        const CustomText(
                                          text: "Tanggal Peminjaman : ",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        const CustomText(
                                          text:
                                              "31 mei 2025, pkl.22.00 - 01.00",
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 10.0),
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          InkWell(
                            onTap: () {
                              openPage(const DetailPeminjamanPage(), context);
                            },
                            child: Container(
                                height: 50,
                                padding: const EdgeInsets.symmetric(),
                                decoration: const BoxDecoration(
                                  color: Color(0xff2E6EEF),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25)),
                                ),
                                child: const Center(
                                  child: CustomText(
                                    text: "Lihat Detail",
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
