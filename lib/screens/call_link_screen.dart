import 'package:flutter/material.dart';

class CallLinlScreen extends StatelessWidget {
  const CallLinlScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create call link'),
        backgroundColor: Colors.teal,
      ),
      body: const Column(
        children: [
          Text(
            'Anyone with WhatsApp can use this link to join this call .only share it with people you trust',
            textAlign: TextAlign.left,
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
