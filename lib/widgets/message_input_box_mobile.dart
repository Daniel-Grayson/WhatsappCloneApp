import 'package:flutter/material.dart';

import '../colors.dart';

class MessageInputBoxMobile extends StatelessWidget {
  const MessageInputBoxMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.07,
        width: MediaQuery.of(context).size.width * 0.999,
        padding: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(
            color: dividerColor,
          )),
          color: Colors.transparent,
        ),
        child: Row(children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 5,
            ),
            child: TextField(
              decoration: InputDecoration(
                  hoverColor: Colors.grey[800],
                  filled: true,
                  fillColor: searchBarColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30),
                      onTap: () {},
                      child: const Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      InkWell(
                        borderRadius: BorderRadius.circular(30),
                        onTap: () {},
                        child: const Icon(
                          Icons.attach_file_rounded,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: InkWell(
                          borderRadius: BorderRadius.circular(30),
                          onTap: () {},
                          child: const Icon(
                            Icons.camera_alt_rounded,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      // IconButton(
                      //   splashRadius: 10,
                      //   iconSize: 22,
                      //   onPressed: () {},
                      //   icon: const Icon(
                      //     Icons.attach_file_rounded,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                      // IconButton(
                      //   iconSize: 22,
                      //   onPressed: () {},
                      //   icon: const Icon(
                      //     Icons.camera_alt_rounded,
                      //     color: Colors.grey,
                      //   ),
                      // ),
                    ],
                  ),
                  hintStyle: const TextStyle(fontSize: 14),
                  hintText: "Type a message",
                  contentPadding: const EdgeInsets.only(left: 20)),
            ),
          )),
          CircleAvatar(
            backgroundColor: messageColor,
            child: IconButton(
              iconSize: 25,
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.white,
              ),
            ),
          )
        ]));
  }
}
