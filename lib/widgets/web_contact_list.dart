import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/screens/mobile_chat_screen.dart';
import '../info.dart';

class WebContactsList extends StatelessWidget {
  const WebContactsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
