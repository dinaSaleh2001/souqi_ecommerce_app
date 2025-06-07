import 'package:ecommerceapp/screens/Cart/cart_screen.dart';
import 'package:ecommerceapp/screens/Home/home_screen.dart';
import 'package:ecommerceapp/screens/Favorite/favorite.dart';
import 'package:ecommerceapp/screens/Profile/profile.dart';
import 'package:ecommerceapp/widgets/constants.dart';
import 'package:flutter/material.dart';

class Bottomappbar extends StatefulWidget {
  const Bottomappbar({super.key});

  @override
  State<Bottomappbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<Bottomappbar> {
  int cuttentIndex = 2;
  List screens = [
    const Scaffold(),
    const Favorite(),
    const HomeScreen(),
    const CartScreen(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            cuttentIndex = 2;
          });
        },
        shape: const CircleBorder(),
        backgroundColor: kprimarytColor,
        child: const Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      //لجعل ال button في المنتصف
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 1,
        height: 60,
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 0;
                });
              },
              icon: Icon(
                Icons.grid_view_outlined,
                size: 30,
                color:
                    cuttentIndex == 0 ? kprimarytColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 1;
                });
              },
              icon: Icon(
                Icons.favorite_border,
                size: 30,
                color:
                    cuttentIndex == 1 ? kprimarytColor : Colors.grey.shade400,
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 3;
                });
              },
              icon: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color:
                    cuttentIndex == 3 ? kprimarytColor : Colors.grey.shade400,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  cuttentIndex = 4;
                });
              },
              icon: Icon(
                Icons.person,
                size: 30,
                color:
                    cuttentIndex == 4 ? kprimarytColor : Colors.grey.shade400,
              ),
            )
          ],
        ),
      ),
      body: screens[cuttentIndex],
    );
  }
}
