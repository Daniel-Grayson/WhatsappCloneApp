import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/colors.dart';

import '../info.dart';

class MobileCallsList extends StatelessWidget {
  const MobileCallsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                title: Text(
                  info[index]["name"].toString(),
                  style: const TextStyle(fontSize: 18),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 3.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.call_made_rounded,
                        size: 17,
                        color: tabColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Text(info[index]["calltime"].toString(),
                            style: const TextStyle(fontSize: 15)),
                      ),
                    ],
                  ),
                ),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                    info[index]["profilePic"].toString(),
                  ),
                  radius: 30,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.call_rounded,
                    color: tabColor,
                  ),
                ),
              )
            ],
          );
        });
  }
}
