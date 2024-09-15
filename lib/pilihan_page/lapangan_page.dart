import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:flutter/material.dart';

class LapanganPage extends StatelessWidget {
  const LapanganPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const CustomText(
            text: 'Pilihan Sarpras',
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
          leading: InkWell(
            onTap: () {
              backPage(context);
            },
            child: const Icon(Icons.arrow_back_ios),
          ),
          bottom: const TabBar(
            indicatorColor: Color(0xff2E6EEF),
            dividerColor: Colors.transparent,
            labelColor: Color(0xff2E6EEF),
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(text: 'Kelas', icon: Icon(Icons.class_)),
              Tab(
                text: 'Lapangan',
                icon: Icon(
                  Icons.fitness_center_outlined,
                ),
              ),
              Tab(
                text: 'Lab',
                icon: Icon(
                  Icons.science_outlined,
                ),
              ),
              Tab(
                text: 'Alat',
                icon: Icon(Icons.handyman_outlined),
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTabBar('Flights'),
            NestedTabBar('Trips'),
            NestedTabBar('Explore'),
            NestedTabBar('Explore'),
          ],
        ),
      ),
    );
  }
}

class NestedTabBar extends StatefulWidget {
  const NestedTabBar(this.outerTab, {super.key});

  final String outerTab;

  @override
  State<NestedTabBar> createState() => _NestedTabBarState();
}

class _NestedTabBarState extends State<NestedTabBar>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        TabBar.secondary(
          controller: _tabController,
          tabs: const <Widget>[
            Tab(text: 'Tidak Digunakan'),
            Tab(text: 'Digunakan'),
          ],
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
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
                                color: Colors.red,
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
                                text: "Pinjam",
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
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
                                color: Colors.red,
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
                                text: "Pinjam",
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
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
                                text: "Pinjam",
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
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
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
                                text: "Pinjam",
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
              ListView(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 12),
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                                const Padding(
                                  padding: EdgeInsets.only(left: 15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      CustomText(
                                        text: "Ruang COE 3 lt.3",
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          CustomText(
                                            text: "Lokasi",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 20,
                                            color: Color(0xff2E6EEF),
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Gedung COE",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      CustomText(
                                        text: "Admin",
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            color: Colors.blue,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          SizedBox(
                                            width: 170,
                                            child: CustomText(
                                              text: "Prof. Asepudin St.Mt.",
                                              fontSize: 14,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.favorite,
                                size: 30,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
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
    );
  }
}
