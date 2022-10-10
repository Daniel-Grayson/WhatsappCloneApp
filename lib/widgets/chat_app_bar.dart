import 'package:flutter/material.dart';

import '../colors.dart';
import '../info.dart';

class ChatAppBar extends StatelessWidget {
  const ChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.077,
        width: MediaQuery.of(context).size.width * 0.75,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          color: webAppBarColor,
          border: Border(
            bottom: BorderSide(color: dividerColor),
          ),
        ),
        child: Expanded(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://cdn.pixabay.com/photo/2021/04/05/12/39/man-6153298_960_720.jpg'),
                  radius: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                Text(
                  info[2]["name"].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
              ],
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search_rounded,
                      color: Colors.grey,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                  color: Colors.grey,
                ),
              ],
            )
          ]),
        ));
  }
}
