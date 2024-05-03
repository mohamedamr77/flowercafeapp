import 'package:flutter/material.dart';

import '../../ui/favourite_screen.dart';
import '../../ui/login_screen.dart';
import '../../ui/signup_screen.dart';
class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("Mohamed amr",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            accountEmail: Text("moamr947@gmail.com",
              style: TextStyle(
                  color: Colors.white
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/cafe_images/dividerBgAppBar.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.shopping_cart_outlined),
              title: Text("Orders"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen(),));
              },
              leading: const Icon(Icons.login),
              title: const Text("loign"),

            ),
          ),
          Card(
            child: ListTile(
              leading: const Icon(Icons.qr_code),
              title: const Text("Promo Code"),

            ),
          ),
           Card(
            child: ListTile(
              leading: Icon(Icons.favorite_outlined),
              title: Text("Favourites"),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => FavouriteScreen(),));
              },

            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.help),
              title: Text("Help"),
            ),
          ),
        ],
      ),
    );
  }
}
