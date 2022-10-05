import 'package:flutter/material.dart';

import '../widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(children: const [
            // web profile bar
            // web search bar
            ContactsList()
          ]),
        ),
        // web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/backgroundImage.png"),
                  fit: BoxFit.cover)),
        ),
      ],
    ));
  }
}
