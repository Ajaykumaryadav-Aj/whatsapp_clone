import 'package:flutter/material.dart';
import 'package:whatsapp/screens/profile.dart';
import 'package:whatsapp/utils/database.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
        leading: BackButton(
          color: Colors.white,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfileScreen(),
                    ));
              },
              leading: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/Tiranga.jpg'),
                radius: 30,
              ),
              title: const Text(
                'Ajay',
                style: TextStyle(fontSize: 22),
              ),
              subtitle: const Text(
                'Urgent call only',
                style: TextStyle(fontSize: 16),
              ),
              trailing: const Icon(
                Icons.qr_code,
                color: Colors.teal,
                size: 30,
              ),
            ),
            const Divider(thickness: 0.7),
            ListView.builder(
              itemCount: settinglist.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(
                    settinglist[index]['icon'],
                    color: Colors.grey,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      settinglist[index]['name'],
                      style: const TextStyle(fontSize: 18),
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      settinglist[index]['subname'],
                      style: const TextStyle(fontSize: 16),
                    ),
                  ),
                );
              },
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('from', style: TextStyle(fontSize: 16)),
                SizedBox(width: 4),
                Text(
                  'Meta',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
