import 'package:flutter/material.dart';

class StatusEditBox extends StatelessWidget {
  const StatusEditBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        backgroundColor: Colors.amber,
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
          decoration: InputDecoration(
              hintText: 'Type a Status',
              hintStyle: TextStyle(
                fontSize: 25,
              ),
              border: InputBorder.none),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
