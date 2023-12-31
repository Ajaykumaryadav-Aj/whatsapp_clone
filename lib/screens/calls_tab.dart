import 'package:flutter/material.dart';
import 'package:whatsapp/screens/add_call.dart';
import 'package:whatsapp/screens/call_info_screen.dart';
import 'package:whatsapp/utils/database.dart';

class CallsTab extends StatelessWidget {
  const CallsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddCalls(),
            ),
          );
        },
        child: const Icon(
          Icons.add_ic_call,
          color: Colors.white,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18),
        child: Column(
          children: [
            const ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal,
                radius: 35.0,
                child: Icon(
                  Icons.link,
                  color: Colors.white,
                ),
              ),
              title: Text(
                'Create call link',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              subtitle: Text(
                'Share a link for your WhatsApp call',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 14, 300, 0),
              child: Text(
                'Recent',
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: calllist.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CallInfoScreen(),
                          ));
                    },
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage(statuslist[index]['image']),
                        radius: 25.0,
                      ),
                      title: Text(
                        calllist[index]['name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      subtitle: Text(
                        calllist[index]['message'],
                        style: const TextStyle(fontSize: 15),
                      ),
                      trailing: Icon(
                        calllist[index]['icon'],
                        color: Colors.teal,
                      ),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}