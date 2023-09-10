import 'package:flutter/material.dart';

List<Map<String, dynamic>> addinvite = [
  {"icon": Icons.share, 'name': 'Invite friend'},
  {'icon': Icons.help, 'name': 'contact help'},
];
List<Map<String, dynamic>> addcalllist = [
  {'icon': Icons.link, 'new': 'New call link'},
  {
    'icon': Icons.group,
    'new': 'New group call',
  },
  {'icon': Icons.person_add, 'new': 'New contact', 'sideicon': Icons.qr_code},
];

List<Map<String, dynamic>> addprsnlist = [
  {
    'name': "Ajay",
    'message': 'message yourself',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Rajesh',
    'message': 'Hey there i am using WhatsApp',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Maneger',
    'message': '😎',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'saurabh',
    'message': 'keep smiling😀',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
  {
    'name': 'Raju',
    'message': 'Urgent calls only',
    'sidetext': '',
    'image': "assets/images/Tiranga.jpg"
  },
];

class AddCalls extends StatelessWidget {
  const AddCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Selected contact',
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
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    addcalllist[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  addcalllist[index]['new'],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(addcalllist[index]['sideicon']),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: addprsnlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(addprsnlist[index]['image']),
                ),
                title: Text(addprsnlist[index]['name']),
                subtitle: Text(addprsnlist[index]['message']),
                trailing: const Wrap(spacing: 25, children: [
                  Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ]),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    addinvite[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                title: Text(addinvite[index]['name']),
              );
            },
          )
        ],
      ),
    );
  }
}
