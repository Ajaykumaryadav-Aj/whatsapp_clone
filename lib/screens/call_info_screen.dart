import 'package:flutter/material.dart';

class CallInfoScreen extends StatelessWidget {
  const CallInfoScreen({super.key});

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
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 1,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(),
                  title: Text('data'),
                  subtitle: Text('data'),
                  trailing: Wrap(
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
          ),
          const ListTile(
            leading: Icon(Icons.call_missed_outgoing),
            // title: Text(),
          )
        ],
      ),
    );
  }
}
