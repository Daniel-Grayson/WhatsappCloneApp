import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/colors.dart';
import 'package:whatsapp_clone_app/widgets/message_input_box_mobile.dart';

import '../info.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
              )),
          title: Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[0]["profilePic"].toString(),
                  ),
                  radius: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    info[0]["name"].toString(),
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.videocam_rounded,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.phone_rounded,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.white,
                ))
          ],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width * 0.999,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backgroundImage.png"),
                  fit: BoxFit.cover)),
          child: Column(children: const [
            Expanded(
              child: ChatList(),
            ),
            MessageInputBoxMobile(),
          ]),
        ));
  }
}
