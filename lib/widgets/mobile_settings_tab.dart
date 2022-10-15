import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/colors.dart';

class MobileSettingsTab extends StatelessWidget {
  const MobileSettingsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          title: const Text("Settings",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              )),
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            radius: 25,
                            backgroundImage: AssetImage(
                              "assets/image/statusprofile.jpg",
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Daniel.',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 4.0),
                                child: Text(
                                  "Trying to find myself, a...",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.qr_code_rounded,
                                color: tabColor,
                              )),
                        ],
                      ),
                    )
                  ]),
            ),
            const Divider(
              color: appBarColor,
            ),
            // ListView(
            //   padding: const EdgeInsets.all(8.0),
            //   children: [
            //     ListTile(
            //       title: Text("Account"),
            //       subtitle: Text("Privacy, Security, change number"),
            //       leading: Icon(Icons.key_rounded),
            //     ),
            //     ListTile(
            //       title: Text("Chats"),
            //       subtitle: Text("Privacy, Security, change number"),
            //       leading: Icon(Icons.key_rounded),
            //     ),
            //   ],
            // )
          ],
        ));
  }
}
