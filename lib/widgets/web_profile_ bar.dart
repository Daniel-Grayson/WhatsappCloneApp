import 'package:flutter/material.dart';

import '../colors.dart';
import '../info.dart';

class WebProfileBar extends StatelessWidget {
  const WebProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.077,
        width: MediaQuery.of(context).size.width * 0.25,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(
          border: Border(
            right: BorderSide(
              color: dividerColor,
            ),
          ),
          color: webAppBarColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2021/04/05/12/39/man-6153298_960_720.jpg'),
              radius: 20,
            ),
            Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.comment_rounded,
                      color: Colors.grey,
                    )),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert_rounded),
                  color: Colors.grey,
                ),
              ],
            )
          ],
        ));
  }
}
