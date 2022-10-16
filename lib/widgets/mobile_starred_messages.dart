import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/colors.dart';

class MobileStarredMessages extends StatelessWidget {
  const MobileStarredMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text(
            "Starred Messages",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search_rounded, color: Colors.grey)),
            PopupMenuButton(
                icon: const Icon(
                  Icons.more_vert_rounded,
                  color: Colors.grey,
                ),
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      child: Text("Unstar all"),
                    )
                  ];
                })
          ]),
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: const [
        Center(
          child: Text(
            "There are no \n starred messages",
            textAlign: TextAlign.center,
          ),
        ),
      ]),
    );
  }
}
