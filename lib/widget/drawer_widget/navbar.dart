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
          UserAccountsDrawerHeader(
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
            // currentAccountPicture: CircleAvatar(
            //   backgroundColor: Colors.white,
            //   backgroundImage: AssetImage("assets/images/appbartitle.png",),
            // ),
            decoration: BoxDecoration(
              color: Colors.orange,
              image: DecorationImage(
                image: AssetImage("assets/images/dividerBgAppBar.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Card(
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
              leading: Icon(Icons.login),
              title: Text("loign or sign Up"),

            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Text("Account"),

            ),
          ),
          Card(
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
