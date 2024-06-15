import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database.dart';

class ChatBox extends StatefulWidget {
  const ChatBox({super.key, required this.index});
  final int index;
  @override
  State<ChatBox> createState() => _ChatBoxState();
}

class _ChatBoxState extends State<ChatBox> {
  final textcontroller = TextEditingController();
  bool send = false;
  bool icon = false;

  @override
  void initState() {
    super.initState();
    textcontroller.addListener(() {
      if (textcontroller.text.isNotEmpty) {
        send = true;
      } else {
        send = false;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.teal,
          leading: const BackButton(
            color: Colors.white,
          ),
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
          leadingWidth: 20,
          title: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    chatimage[widget.index]['image'],
                    height: 45,
                    width: 45,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chatlist[widget.index]['name'],
                          style: const TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Online',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white.withOpacity(0.8)),
                        )
                      ]),
                )
              ],
            ),
          )),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 41),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            send
                ? FloatingActionButton(
                    heroTag: true,
                    onPressed: () {},
                    backgroundColor: Colors.teal,
                    shape: const CircleBorder(),
                    child: const Icon(
                      Icons.send,
                      color: Colors.white,
                      size: 30,
                    ),
                  )
                : FloatingActionButton(
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
          Expanded(
            child: ListView.builder(
              itemCount: chating[widget.index]['messages'].length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 300),
                  child: Card(
                    // elevation: 50,
                    child: Column(
                      children: [
                        Text(chating[widget.index]['messages'][index]
                            ['message']),
                        Text(chating[widget.index]['messages'][index]['time']),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: TextField(
              textInputAction: TextInputAction.done,
              controller: textcontroller,
              onSubmitted: (value) {
                if (textcontroller.text.isNotEmpty) {
                  chating.add({
                    'messages': value,
                  });
                  setState(() {});
                }
              },
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
                      child: Icon(
                        Icons.currency_rupee,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.photo_camera),
                    ),
                  ],
                ),

                hintText: 'Message',
                hintStyle: TextStyle(
                  fontSize: 21,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide: BorderSide.none),
                constraints: BoxConstraints(maxHeight: 350, maxWidth: 340),
              ),
              onTap: () {
                log('message');
              },
            ),
          ),
        ],
      ),
    );
  }
}
