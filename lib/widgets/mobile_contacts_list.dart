import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/screens/mobile_chat_screen.dart';
import '../colors.dart';
import '../info.dart';

class MobileContactsList extends StatelessWidget {
  const MobileContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 4.0),
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MobileChatScreen()),
                      );
                    },
                    child: ListTile(
                      title: Text(
                        info[index]["name"].toString(),
                        style: const TextStyle(fontSize: 18),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Text(info[index]["message"].toString(),
                            style: const TextStyle(fontSize: 15)),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]["profilePic"].toString(),
                        ),
                        radius: 30,
                      ),
                      trailing: Text(
                        info[index]["time"].toString(),
                        style: const TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: tabColor,
        child: const Icon(
          Icons.insert_comment_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}
