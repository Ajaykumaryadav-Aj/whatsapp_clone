import 'package:flutter/material.dart';
import 'package:whatsapp/utils/database.dart';

class NewGroupPage extends StatefulWidget {
  const NewGroupPage({super.key});

  @override
  State<NewGroupPage> createState() => _NewGroupPageState();
}

class _NewGroupPageState extends State<NewGroupPage> {
  List<Map<String, dynamic>> selectusers = [];
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  selectusers.length,
                  (index) => Stack(children: [
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage(chatimage[index]['image']),
                            radius: 30,
                          ),
                        ),
                        Text(selectusers[index]['name']),
                      ],
                    ),
                    Positioned(
                      right: 0,
                      child: GestureDetector(
                          onTap: () {
                            selectusers.removeAt(index);
                            setState(() {});
                          },
                          child: const Icon(Icons.cancel)),
                    )
                  ]),
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: contactprsnlist.length,
              itemBuilder: (context, index) {
                return ListTile(
                  selected: selectusers.contains(contactprsnlist[index]),
                  onTap: () {
                    selectusers.add(contactprsnlist[index]);
                    setState(() {});
                  },
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
      ),
    );
  }
}
