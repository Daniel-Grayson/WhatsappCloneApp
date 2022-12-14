import 'package:flutter/material.dart';

import '../widgets/chat_app_bar.dart';
import '../widgets/chat_list.dart';
import '../widgets/web_contact_list.dart';
import '../widgets/message_input_box.dart';
import '../widgets/web _search_bar.dart';
import '../widgets/web_profile_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: const [
              WebProfileBar(),
              WebSearchBar(),
              WebContactsList()
            ]),
          ),
        ),
        // web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backgroundImage.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: const [
              WebChatAppBar(),
              Expanded(
                child: ChatList(),
              ),
              MessageInputBox(),
            ],
          ),
        ),
      ],
    ));
  }
}
