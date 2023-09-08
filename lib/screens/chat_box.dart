import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/mywhatsapp.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.index});
  final int index;
  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
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
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 18),
              child: CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(chatimage[widget.index]['image']),
              ),
            ),
            // SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  chatlist[widget.index]['name'],
                  style: const TextStyle(color: Colors.white),
                ),
                const Text(
                  '3:00 pm',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 41),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            FloatingActionButton(
              heroTag: true,
              onPressed: () {},
              backgroundColor: Colors.teal,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.send,
                color: Colors.white,
                size: 30,
              ),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.teal,
              shape: const CircleBorder(),
              child: const Icon(
                Icons.keyboard_voice,
                color: Colors.white,
                size: 30,
              ),
            ),
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
                style: const TextStyle(fontSize: 20),
                keyboardType: TextInputType.multiline,
                cursorColor: Colors.teal,
                cursorWidth: 3,
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
                        child: Icon(Icons.link, size: 28),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.currency_rupee),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Icon(Icons.photo_camera),
                      ),
                    ],
                  ),
                  // suffix: Icon(
                  //   Icons.add_circle_outline_rounded,
                  // ),
                  hintText: 'Message',
                  hintStyle: TextStyle(
                    fontSize: 21,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                      borderSide: BorderSide.none),
                  constraints: BoxConstraints(maxHeight: 350, maxWidth: 340),
                ),
                onTap: () {
                  log('message');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
