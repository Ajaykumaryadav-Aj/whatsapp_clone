import 'package:flutter/material.dart';
import 'package:whatsapp/screens/create_status.dart';
import 'package:whatsapp/screens/status_edit_box.dart';
import 'package:whatsapp/utils/database.dart';

class StatusTab extends StatelessWidget {
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: FloatingActionButton.small(
              heroTag: true,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StatusEditBox(),
                  ),
                );
              },
              //backgroundColor: Colors.teal,
              child: const Icon(
                Icons.edit,
                color: Colors.teal,
              ),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.teal,
            child: const Icon(
              Icons.camera_alt_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CreateStatus(),
                    ));
              },
              child: const ListTile(
                leading: CircleAvatar(
                  radius: 25.0,
                  //backgroundImage: AssetImage('assets/images/aj2.jpg'),
                  child: Padding(
                    padding: EdgeInsets.all(23.0),
                    child: Icon(
                      Icons.add_circle,
                      color: Colors.teal,
                      size: 30.0,
                    ),
                  ),
                ),
                title: Text(
                  'My status',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(
                  'Tap to add status update',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 1.65),
              child: const Text(
                'Recent updates',
                style: TextStyle(fontSize: 16),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: statuslist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(
                      statuslist[index]['image'],
                    ),
                    radius: 25,
                  ),
                  title: Text(
                    statuslist[index]['name'],
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    statuslist[index]['message'],
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
