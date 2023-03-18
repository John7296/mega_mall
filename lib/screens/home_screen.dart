import 'package:flutter/material.dart';
import 'package:mega_mall/screens/account_screen.dart';
import 'package:mega_mall/screens/home_detail_screen.dart';
import 'package:mega_mall/screens/order_screen.dart';
import 'package:mega_mall/screens/product_detail_screen.dart';
import 'package:mega_mall/screens/wishlist_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              selectedindex = index;
            });
            // pageChanged(index);
          },
          children: const [
            HomeDetailScreen(),
            WishlistScreen(),
            OrderScreen(),
            AccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Color.fromARGB(255, 3, 128, 231),
        unselectedItemColor: Colors.grey[700],
        currentIndex: selectedindex,
        onTap: selectedPage,

        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/ic_home.png"),
              size: 30,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/ic_wishlist.png"),
                size: 30,
              ),
              label: "WISHLIST"),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("assets/icons/ic_cart.png"),
                size: 30,
              ),
              label: "ORDER"),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("assets/icons/ic_profile.png"),
              size: 30,
            ),
            label: "ACCOUNT",
          ),
        ],
        selectedFontSize: 10,
        unselectedFontSize: 10,
      ),
    );
  }

  void selectedPage(int index) {
    setState(() {
      selectedindex = index;
      pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }
}
