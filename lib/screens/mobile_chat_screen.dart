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
          centerTitle: false,
          leadingWidth: 25,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  info[0]["profilePic"].toString(),
                ),
                radius: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  info[0]["name"].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.videocam_rounded,
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.phone_rounded,
                color: Colors.white,
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: PopupMenuButton(itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Text("View Contact"),
                    ),
                    const PopupMenuItem(
                      child: Text("Media, Links, and docs"),
                    ),
                    const PopupMenuItem(
                      child: Text("Search"),
                    ),
                    const PopupMenuItem(
                      child: Text("Disappearing Messages"),
                    ),
                    const PopupMenuItem(
                      child: Text("Wallpaper"),
                    ),
                    const PopupMenuItem(
                      child: Text("More"),
                    ),
                  ];
                })),
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
