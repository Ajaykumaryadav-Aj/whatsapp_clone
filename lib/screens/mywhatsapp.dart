import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/screens/calls_tab.dart';
import 'package:whatsapp/screens/chat_tab.dart';
import 'package:whatsapp/screens/setting_screen.dart';
import 'package:whatsapp/screens/status_tab.dart';


class MyWhatsapp extends StatelessWidget {
  const MyWhatsapp({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'WhatsApp',
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            const Icon(
              Icons.camera_alt_outlined,
              color: Colors.white,
              size: 30,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
            ),
            const Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
            // Icon(Icons.abc_outlined),
            PopupMenuButton(
              color: Colors.white,
              itemBuilder: (context) => [
                const PopupMenuItem(
                  child: Text('search'),
                ),
                const PopupMenuItem(
                  child: Text('New broadcast'),
                ),
                const PopupMenuItem(
                  child: Text('Linked device'),
                ),
                const PopupMenuItem(
                  child: Text('Starred message'),
                ),
                const PopupMenuItem(
                  child: Text('Payments'),
                ),
                PopupMenuItem(
                  child: const Text('Settings'),
                  onTap: () async {
                    await Navigator.push(
                      navigatorkey.currentContext!,
                      MaterialPageRoute(
                        builder: (context) {
                          return const SettingScreen();
                        },
                      ),
                    );
                  },
                ),
              ],
            )
          ],
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                child: Icon(
                  Icons.groups,
                  color: Colors.white,
                ),
              ),
              Tab(text: 'Chats'),
              Tab(text: 'Status'),
              Tab(text: 'Calls'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            MyCommunity(),
            ChatTab(),
            StatusTab(),
            CallsTab(),
          ],
        ),
      ),
    );
  }
}

//➡️➡️➡️➡️➡️➡️➡️*****MyCommunity************************************************** */

class MyCommunity extends StatelessWidget {
  const MyCommunity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              maxRadius: 25,
              child: Icon(
                Icons.groups,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
          Text(
            'New community',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

