import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database.dart';



class AddCalls extends StatelessWidget {
  const AddCalls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: const Text(
          'Selected contact',
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
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.more_vert,
              color: Colors.white,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: 3,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  child: Icon(
                    addcalllist[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  addcalllist[index]['new'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                trailing: Icon(addcalllist[index]['sideicon']),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: addprsnlist.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage(addprsnlist[index]['image']),
                ),
                title: Text(
                  addprsnlist[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
                subtitle: Text(addprsnlist[index]['message']),
                trailing: const Wrap(spacing: 25, children: [
                  Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                  Icon(
                    Icons.videocam,
                    color: Colors.teal,
                  ),
                ]),
              );
            },
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 2,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Icon(
                    addinvite[index]['icon'],
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  addinvite[index]['name'],
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 18),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
