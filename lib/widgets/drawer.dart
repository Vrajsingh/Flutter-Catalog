import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = "https://user-images.githubusercontent.com/45869380/187597937-a1857d0b-5e47-4eea-a53b-c2d7a26dfb65.jpg";
    return Drawer(
       child: Container(
         color: Colors.deepPurple,
         child: ListView(
           padding: EdgeInsets.zero,
           children: [
             DrawerHeader(
               padding: EdgeInsets.zero,
                 child: UserAccountsDrawerHeader(
                   margin: EdgeInsets.zero,
                   accountName: Text("Vishal Raj"),
                   accountEmail: Text("vishal.raj@technogise.com"),
                   currentAccountPicture: CircleAvatar(
                     backgroundImage: NetworkImage(imageUrl),
                   )
                 ),
             ),
             ListTile(
               leading: Icon(
                 CupertinoIcons.home,
                 color: Colors.white,
               ),
               title: Text(
                 "Home",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             ),
             ListTile(
               leading: Icon(
                 CupertinoIcons.profile_circled,
                 color: Colors.white,
               ),
               title: Text(
                 "Profile",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             ),
             ListTile(
               leading: Icon(
                 CupertinoIcons.mail,
                 color: Colors.white,
               ),
               title: Text(
                 "Contact Us",
                 textScaleFactor: 1.2,
                 style: TextStyle(
                   color: Colors.white,
                 ),
               ),
             )
           ],
         ),
       ),
    );
  }
}
