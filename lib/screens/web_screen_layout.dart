import 'package:flutter/material.dart';

import '../widgets/contact_list.dart';
import '../widgets/web _search_bar.dart';
import '../widgets/web_profile_ bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(children: const [
              WebProfileBar(),
              WebSearchBar(),
              ContactsList()
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
          child: const Center(
            child: Text("Chats are here!"),
          ),
        ),
      ],
    ));
  }
}
