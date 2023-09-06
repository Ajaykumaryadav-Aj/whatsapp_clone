import 'package:flutter/material.dart';
import 'package:whatsapp/screens/mywhatsapp.dart';

List<Map<String, dynamic>> contactlist = [
  {'icon': Icons.group, 'New': 'New group'},
  {'icon': Icons.person_add, 'New': 'New contact', 'sideicon': Icons.qr_code},
  {'icon': Icons.groups, 'New': 'New community'},
];

List<Map<String, dynamic>> contactprsnlist = [
  {'name': "(You)", 'message': 'message yourself', 'sidetext': ''},
  {'name': 'Mrs', 'message': 'Hey there i am using WhatsApp', 'sidetext': ''},
  {'name': 'Maneger', 'message': '😎', 'sidetext': ''},
  {'name': 'saurabh', 'message': 'keep smiling😀', 'sidetext': ''},
  {'name': 'Raju', 'message': 'Urgent calls only', 'sidetext': ''},
];

List<Map<String, dynamic>> invitelist = [
  {'icon': Icons.person, 'name': 'Ramu', 'message': '', 'sidetext': 'Invite'},
  {'icon': Icons.person, 'name': 'aditya', 'message': '', 'sidetext': 'Invite'},
  {'icon': Icons.person, 'name': 'Monu', 'message': '', 'sidetext': 'Invite'},
  {
    'icon': Icons.share,
    'name': 'Share invite link',
    'message': '',
    'sidetext': ''
  },
  {'icon': Icons.help, 'name': 'Contacts help', 'message': '', 'sidetext': ''},
];

class ChatMessagebox extends StatelessWidget {
  const ChatMessagebox({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: const Text(
            'Select contact',
            style: TextStyle(color: Colors.white),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: contactlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        contactlist[index]['icon'],
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      contactlist[index]['New'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    trailing: Icon(
                      contactlist[index]['sideicon'],
                      size: 30,
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 215, 0),
                child: Text(
                  'Contacts on WhatsApp',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: contactprsnlist.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(chatimage[index]['image']),
                    ),
                    title: Text(
                      contactprsnlist[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      contactprsnlist[index]['message'],
                      style: const TextStyle(fontSize: 16),
                    ),
                    trailing: Text(
                      contactprsnlist[index]['sidetext'],
                      style: const TextStyle(fontSize: 16, color: Colors.teal),
                    ),
                  );
                },
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 10, 250, 0),
                child: Text(
                  'Invite to WhatsApp',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              ListView.builder(
                itemCount: invitelist.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      child: Icon(
                        invitelist[index]['icon'],
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      invitelist[index]['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    trailing: Text(
                      invitelist[index]['sidetext'],
                      style: const TextStyle(fontSize: 15, color: Colors.teal),
                    ),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
