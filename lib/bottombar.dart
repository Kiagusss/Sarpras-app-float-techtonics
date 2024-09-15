import 'package:easy_scaffold/easy_scaffold.dart';
import 'package:sarpras_app_float_techtonics/favorite_page.dart';
import 'package:sarpras_app_float_techtonics/form_page.dart';
import 'package:sarpras_app_float_techtonics/homepage.dart';
import 'package:sarpras_app_float_techtonics/profile_page.dart';
import 'package:sarpras_app_float_techtonics/transaction/transaction_list.dart';
import 'package:sarpras_app_float_techtonics/transaction/transactions_list.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedBarExample extends StatefulWidget {
  const AnimatedBarExample({
    super.key,
  });

  @override
  State<AnimatedBarExample> createState() => _AnimatedBarExampleState();
}

class _AnimatedBarExampleState extends State<AnimatedBarExample> {
  dynamic selected;
  var heart = false;
  PageController controller = PageController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: StylishBottomBar(
        items: [
          BottomBarItem(
            icon: const Icon(
              Icons.home,
              size: 33,
            ),
            selectedColor: const Color(0xff4852A1),
            unSelectedColor: Colors.grey,
            title: Text(
              'Home',
              style: GoogleFonts.mulish(fontSize: 16),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.favorite,
              size: 33,
            ),
            selectedColor: const Color(0xff4852A1),
            unSelectedColor: Colors.grey,
            title: Text(
              'Favorit',
              style: GoogleFonts.mulish(fontSize: 16),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.chat_rounded,
              size: 29,
            ),
            selectedIcon: const Icon(
              Icons.style,
            ),
            selectedColor: const Color(0xff4852A1),
            unSelectedColor: Colors.grey,
            title: Text(
              'Pinjam',
              style: GoogleFonts.mulish(fontSize: 16),
            ),
          ),
          BottomBarItem(
            icon: const Icon(
              Icons.person,
              size: 33,
            ),
            selectedIcon: const Icon(
              Icons.person,
            ),
            selectedColor: const Color(0xff4852A1),
            unSelectedColor: Colors.grey,
            title: Text(
              'Profile',
              style: GoogleFonts.mulish(fontSize: 16),
            ),
          ),
        ],
        hasNotch: true,
        fabLocation: StylishBarFabLocation.center,
        currentIndex: selected ?? 0,
        onTap: (index) {
          controller.jumpToPage(index);
          setState(() {
            selected = index;
          });
        },
        option: AnimatedBarOptions(
          // iconSize: 32,
          barAnimation: BarAnimation.transform3D,
          iconStyle: IconStyle.animated,
          // opacity: 0.3,
        ),
      ),
      floatingActionButton: Container(
        constraints: BoxConstraints.tight(const Size(70, 70)),
        child: FloatingActionButton(
          elevation: 200,
          onPressed: () {
            openPage(const FormPage(), context);
          },
          backgroundColor: const Color(0xff4852A1),
          child: const Icon(
            Icons.calendar_month_outlined,
            size: 35,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            HomePage(),
            FavoritePage(),
            TransactionListPages(),
            ProfilePage(),
          ],
        ),
      ),
    );
  }
}
