import 'package:flutter/material.dart';

class CreateStatus extends StatelessWidget {
  const CreateStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 155),
        child: FloatingActionButton(
          onPressed: () {},
          shape: const CircleBorder(),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.flash_off,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(top: 750),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.insert_photo,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
