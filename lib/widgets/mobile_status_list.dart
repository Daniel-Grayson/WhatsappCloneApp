import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/colors.dart';

import '../info.dart';

class MobileStatusList extends StatelessWidget {
  const MobileStatusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(children: [
                CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.transparent,
                  child: Stack(
                    children: const [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage(
                          "assets/image/statusprofile.jpg",
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 30,
                        child: CircleAvatar(
                          backgroundColor: tabColor,
                          radius: 10,
                          child: Icon(
                            Icons.add_rounded,
                            color: Colors.white,
                            size: 20,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'My Status',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 4.0),
                      child: Text(
                        "Tap to add status update",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.999,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Text(
                            "Recent Updates",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Icon(
                            Icons.keyboard_arrow_up_rounded,
                            color: tabColor,
                          ),
                        )
                      ])),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 120.0),
          child: ListView.builder(
              itemCount: 2,
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
                        child: Text(info[index]["statustime"].toString(),
                            style: const TextStyle(fontSize: 15)),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                          info[index]["profilePic"].toString(),
                        ),
                        radius: 30,
                      ),
                    )
                  ],
                );
              }),
        )
      ]),
    );
  }
}
