import 'package:flutter/material.dart';

class StatusEditBox extends StatelessWidget {
  const StatusEditBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.tag_faces,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.title,
              color: Colors.white,
              size: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.palette,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: const Center(
        child: TextField(
          keyboardType: TextInputType.multiline,
          cursorColor: Colors.white,
          cursorHeight: 35,
          decoration: InputDecoration(
              hintText: 'Type a Status',
              hintStyle: TextStyle(fontSize: 30, color: Colors.grey),
              border: InputBorder.none),
          textAlign: TextAlign.center,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.keyboard_voice,
          color: Colors.white,
          size: 30,
        ),
      ),
    );
  }
}
