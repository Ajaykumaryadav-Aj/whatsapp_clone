import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat_box.dart';
import 'package:whatsapp/screens/contact_box.dart';
import 'package:whatsapp/utils/database.dart';

class ChatTab extends StatelessWidget {
  const ChatTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ChatMessagebox(),
            ),
          );
        },
        backgroundColor: Colors.teal,
        child: const Icon(
          Icons.messenger_outline_sharp,
          color: Colors.white,
          size: 28,
        ),
      ),
      body: ListView.builder(
        itemCount: chatlist.length,
        itemBuilder: (contex, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatBox(
                    index: index,
                  ),
                ),
              );
            },
            child: ListTile(
              leading: GestureDetector(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) => Dialog(
                      shape: const BeveledRectangleBorder(),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            chatimage[index]['image'],
                            height: MediaQuery.of(context).size.width - 30,
                            width: MediaQuery.of(context).size.width - 30,
                            fit: BoxFit.cover,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.message,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.call,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.videocam,
                                color: Colors.teal,
                              ),
                              Icon(
                                Icons.error_outline,
                                color: Colors.teal,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    chatimage[index]['image'],
                  ),

                  // fit: BoxFit.cover,
                ),
              ),
              title: Text(
                chatlist[index]['name'],
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                chatlist[index]['message'],
                style: const TextStyle(fontSize: 16),
              ),
              trailing: const Padding(
                padding: EdgeInsets.only(right: 15),
                child: Text(
                  '6:04 am',
                  style: TextStyle(fontSize: 12),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
