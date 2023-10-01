import 'package:flutter/material.dart';
import 'package:whatsapp/screens/contact_box.dart';
import 'package:whatsapp/screens/mywhatsapp.dart';

class NewGroupPage extends StatelessWidget {
  const NewGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.arrow_forward,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'New group',
          style: TextStyle(color: Colors.white),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: contactprsnlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(chatimage[index]['image']),
                ),
                title: Text(
                  contactprsnlist[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  contactprsnlist[index]['message'],
                  style: const TextStyle(fontSize: 16),
                ),
              );
            },
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person_add),
            ),
            title: Text(
              'New contact',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }
}
