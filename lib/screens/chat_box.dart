import 'dart:developer';

import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.teal,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.videocam,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.call,
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
        title: const Row(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 18),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage('assets/images/Tiranga.jpg'),
              ),
            ),
            // SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ajay',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  '3:00 pm',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const Text('Chat'),
              Padding(
                padding: const EdgeInsets.only(top: 700),
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.tag_faces),
                    suffix: Row(
                      children: [
                        Icon(Icons.attach_file_rounded),
                        Icon(Icons.currency_rupee_sharp),
                        Icon(Icons.camera_alt)
                      ],
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                  ),
                  onTap: () {
                    log('message');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
