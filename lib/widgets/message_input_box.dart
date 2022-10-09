import 'package:flutter/material.dart';

import '../colors.dart';

class MessageInputBox extends StatelessWidget {
  const MessageInputBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.08,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: dividerColor,
          )),
          color: chatBarMessage,
        ),
        child: Row(children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.attach_file_outlined,
              color: Colors.grey,
            ),
          ),
          TextField(
            decoration: InputDecoration(
                hoverColor: Colors.grey[800],
                filled: true,
                fillColor: searchBarColor,
                hintStyle: const TextStyle(fontSize: 14),
                hintText: "Type a message",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 0,
                    style: BorderStyle.none,
                  ),
                ),
                contentPadding: const EdgeInsets.only(left: 20)),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.mic,
              color: Colors.grey,
            ),
          )
        ]));
  }
}
