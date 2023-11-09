import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageurl =
        'https://imgs.search.brave.com/LhazbTJD40x2OM0dID8XoEn6gA_F-NvlZffaIAZm2-M/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9jZG4u/d2FsbHBhcGVyc2Fm/YXJpLmNvbS8zMy80/MC9QVEh4dUsuanBn';
    return Drawer(
        child: Container(
      decoration: const BoxDecoration(color: Colors.deepPurple),
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              accountName: const Text('Mr Robot',textScaleFactor: 1.5,
                style: TextStyle(color: Colors.white),
              ),
              accountEmail: const Text('Mrrobot012@gmail.com',
                textScaleFactor: 1.2,
                 style: TextStyle(color: Colors.white),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageurl),
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.white),textScaleFactor: 1.2,
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.email_rounded
              ,
              color: Colors.white,
            ),
            title: Text(
              'Email',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.2,
            ),
          ),
           const ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: TextStyle(color: Colors.white),
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    ));
  }
}
