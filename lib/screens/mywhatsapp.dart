import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';
import 'package:whatsapp/screens/add_call.dart';
import 'package:whatsapp/screens/call_info_screen.dart';
import 'package:whatsapp/screens/create_status.dart';
import 'package:whatsapp/screens/setting_screen.dart';
import 'package:whatsapp/screens/status_edit_box.dart';
import 'package:whatsapp/utils/database.dart';

import 'chat_box.dart';
import 'contact_box.dart';

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

//*➡️➡️➡️➡️➡️➡️***********CallsTab************************************************* */

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddCalls(),
            ),
          );
        },
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 35.0,
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Create call link',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                'Share a link for your WhatsApp call',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 14, 300, 0),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: calllist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CallInfoScreen(),
                          ));
                    },
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(statuslist[index]['image']),
                      radius: 25.0,
                    ),
                    title: Text(
                      calllist[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      calllist[index]['message'],
                      style: const TextStyle(fontSize: 15),
                    ),
                    trailing: Icon(
                      calllist[index]['icon'],
                      color: Colors.teal,
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}

//*➡️➡️➡️➡️➡️➡️➡️➡️***********StatusTab******************************************* */

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: FloatingActionButton.small(
              heroTag: true,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StatusEditBox(),
                  ),
                );
              },
              //backgroundColor: Colors.teal,
              child: const Icon(
                Icons.edit,
                color: Colors.teal,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.camera_alt_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CreateStatus(),
                  ));
            },
            child: const ListTile(
              leading: CircleAvatar(
                radius: 25.0,
                //backgroundImage: AssetImage('assets/images/aj2.jpg'),
                child: Padding(
                  padding: EdgeInsets.all(23.0),
                  child: Icon(
                    Icons.add_circle,
                    color: Colors.teal,
                    size: 30.0,
                  ),
                ),
              ),
              title: Text(
                'My status',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              subtitle: Text(
                'Tap to add status update',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 247, 0),
            child: Text(
              'Recent updates',
              style: TextStyle(fontSize: 17),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: statuslist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    statuslist[index]['image'],
                  ),
                  radius: 25,
                ),
                title: Text(
                  statuslist[index]['name'],
                  style: const TextStyle(
                      fontSize: 19, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  statuslist[index]['message'],
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

//***➡️➡️➡️➡️➡️➡️➡️********ChatTab************************************************* */

class ChatTab extends StatelessWidget {
  const ChatTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatMessagebox(),
            ),
          );
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.messenger_outline_sharp,
          color: Colors.white,
          size: 28,
        ),
      ),
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatBox(
                    index: index,
                  ),
                ),
              );
            },
            child: ListTile(
              //contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
              leading: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      shape: const BeveledRectangleBorder(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            chatimage[index]['image'],
                            height: MediaQuery.of(context).size.width - 30,
                            width: MediaQuery.of(context).size.width - 30,
                            fit: BoxFit.cover,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.videocam,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.error_outline,
                                color: Colors.teal,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    chatimage[index]['image'],
                  ),

                  // fit: BoxFit.cover,
                ),
              ),
              title: Text(
                chatlist[index]['name'],
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chatlist[index]['message'],
                style: const TextStyle(fontSize: 17),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  '6:04 am',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
