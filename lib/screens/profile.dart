import 'package:flutter/material.dart';

List<Map<String, dynamic>> profilelist = [
  {
    'icon': Icons.person,
    'name': 'Name',
    'subname':
        'This is not your username or pin.this name will be visible to your WhatsApp contacts',
    'icons': Icons.edit
  },
  {
    'icon': Icons.error_outline,
    'name': 'About',
    'subname': 'Urgents call only',
    'icons': Icons.edit
  },
  {
    'icon': Icons.call,
    'name': 'About',
    'subname': '+917050606820',
  },
];

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Profile',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/Tiranga.jpg'),
              radius: 90,
              child: Padding(
                padding: EdgeInsets.only(left: 115, top: 90),
                child: CircleAvatar(
                  radius: 28,
                  backgroundColor: Colors.teal,
                  child: Icon(
                    Icons.photo_camera,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            itemCount: profilelist.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  profilelist[index]['icon'],
                  color: Colors.grey,
                ),
                title: Text(profilelist[index]['name']),
                subtitle: Text(profilelist[index]['subname']),
                trailing: Icon(
                  profilelist[index]['icons'],
                  color: Colors.teal,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
