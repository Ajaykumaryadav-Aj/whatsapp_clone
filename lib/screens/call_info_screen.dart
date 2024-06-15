import 'package:flutter/material.dart';

List<Map<String, dynamic>> callinfolist = [
  {
    'name': "Ajay",
    'message': 'Hey there i am whatsapp using',
    'image': 'assets/images/Tiranga.jpg'
  },
  {
    'name': 'Mrs',
    'message': 'only urgent call',
    'image': 'assets/images/dp image.jpg'
  },
  {'name': 'Maneger', 'message': 'Busy', 'image': 'assets/images/dp image.jpg'},
  {'name': 'saurabh', 'message': '🚩', 'image': 'assets/images/aj2.jpg'},
  {
    'name': 'Raju',
    'message': 'Hey there i am whatsapp using',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'sonu',
    'message': 'Hey there i am whatsapp using',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'abhijeet',
    'message': 'Hey there i am whatsapp using',
    'image': 'assets/images/aj2.jpg'
  },
  {
    'name': 'raj',
    'message': 'Urgent call only',
    'image': 'assets/images/aj2.jpg'
  }
];

class CallInfoScreen extends StatefulWidget {
  const CallInfoScreen({super.key, required this.index});
  final int index;

  @override
  State<CallInfoScreen> createState() => _CallInfoScreenState();
}

class _CallInfoScreenState extends State<CallInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(
          color: Colors.white,
        ),
        title: const Text(
          'Call info',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.teal,
        actions: const [
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.message,
              color: Colors.white,
              size: 27,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(14.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 27,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 1,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    callinfolist[widget.index]['image'],
                  ),
                ),
                title: Text(callinfolist[widget.index]['name']),
                subtitle: Text(callinfolist[widget.index]['message']),
                trailing: const Wrap(
                  spacing: 20,
                  children: [
                    Icon(
                      Icons.call,
                      color: Colors.teal,
                    ),
                    Icon(Icons.videocam, color: Colors.teal)
                  ],
                ),
              );
            },
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.only(right: 230),
            child: Text('22 October'),
          ),
          const ListTile(
            leading: Icon(
              Icons.south_west,
              color: Colors.teal,
            ),
            title: Text('Incoming'),
            subtitle: Wrap(
              children: [
                Icon(
                  Icons.call,
                  color: Colors.grey,
                  size: 18,
                ),
                Text('1:35 pm')
              ],
            ),
            trailing: Column(
              children: [
                Text(
                  '12:55',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                Text(
                  '3.2 MB',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
//  Text(chating[widget.index]['messages'][index]
                            // ['message']),