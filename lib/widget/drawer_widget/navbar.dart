import 'package:flutter/material.dart';

import '../../ui/login_screen.dart';
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
              color: Colors.orange,
              image: DecorationImage(
                image: AssetImage("assets/images/dividerBgAppBar.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),

            ),
          ),
          Card(
            child: ListTile(
              onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder:(context) => LoginScreen(),));
              },
              leading: const Icon(Icons.login),
              title: const Text("loign or sign Up"),

            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),

            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text("settings"),
            ),
          ),

        ],
      ),
    );
  }
}
