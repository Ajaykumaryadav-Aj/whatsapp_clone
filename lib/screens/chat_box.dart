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
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: Padding(
      //   padding: const EdgeInsets.only(left: 40),
      //   child: Stack(
      //     clipBehavior: Clip.none,
      //     children: [
      //       send
      //           ? FloatingActionButton(
      //               heroTag: true,
      //               onPressed: () {},
      //               backgroundColor: Colors.teal,
      //               shape: const CircleBorder(),
      //               child: const Icon(
      //                 Icons.send,
      //                 color: Colors.white,
      //                 size: 30,
      //               ),
      //             )
      //           : FloatingActionButton(
      //               onPressed: () {},
      //               backgroundColor: Colors.teal,
      //               shape: const CircleBorder(),
      //               child: const Icon(
      //                 Icons.keyboard_voice,
      //                 color: Colors.white,
      //                 size: 30,
      //               ),
      //             ),
      //     ],
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width - 10,
                  child: Card(
                    margin: const EdgeInsets.only(right: 5, left: 2, bottom: 8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    child: TextFormField(
                      textAlignVertical: TextAlignVertical.center,
                      controller: textcontroller,
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.multiline,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(5),
                        hintText: 'Message',
                        prefixIcon: Icon(Icons.emoji_emotions),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Icon(Icons.link, size: 28),
                            ),
                            Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Icon(
                                Icons.currency_rupee,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(14.0),
                              child: Icon(Icons.photo_camera),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Stack(
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
            ],
          ),
        ),
      ),
    );
  }
}
