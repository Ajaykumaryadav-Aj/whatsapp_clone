import 'dart:developer';

import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
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
      body: Column(
        children: [
          // const Text(''),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.tag_faces, size: 34),
                  //
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.link),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.currency_rupee),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.photo_camera),
                      )
                    ],
                  ),

                  hintText: 'Message',
                  hintStyle: TextStyle(
                    fontSize: 21,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      borderSide: BorderSide.none),
                ),
                onTap: () {
                  log('message');
                },
              ),
            ),
          ),
          // Icon(Icons.accessibility_sharp)
        ],
      ),
    );
  }
}
