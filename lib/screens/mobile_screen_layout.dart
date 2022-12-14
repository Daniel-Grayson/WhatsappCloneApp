import 'package:flutter/material.dart';
import 'package:whatsapp_clone_app/widgets/mobile_linked_devices.dart';
import 'package:whatsapp_clone_app/widgets/mobile_settings_tab.dart';
import 'package:whatsapp_clone_app/widgets/mobile_starred_messages.dart';
import '../colors.dart';
import '../widgets/mobile_contacts_list.dart';
import '../widgets/mobile_calls_list.dart';
import '../widgets/mobile_status_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: appBarColor,
            title: const Text(
              'Whatsapp',
              style: TextStyle(fontSize: 20, color: Colors.grey),
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
                        child: Text("New Group"),
                      ),
                      const PopupMenuItem(
                        child: Text("New Broadcast"),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MobileLinkedDevices()),
                            );
                          });
                        },
                        child: const Text("Linked Devices"),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MobileStarredMessages()),
                            );
                          });
                        },
                        child: const Text("Starred Messages"),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          WidgetsBinding.instance.addPostFrameCallback((_) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const MobileSettingsTab()),
                            );
                          });
                        },
                        child: const Text("Settings"),
                      ),
                    ];
                  })
            ],
            bottom: const TabBar(
              // onTap: () {},
              indicatorColor: tabColor,
              indicatorWeight: 4,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),

              tabs: [
                Tab(
                  text: ("CHATS"),
                ),
                Tab(
                  text: ("STATUS"),
                ),
                Tab(
                  text: ("CALLS"),
                ),
              ],
            ),
          ),
          body: const TabBarView(children: [
            MobileContactsList(),
            MobileStatusList(),
            MobileCallsList(),
          ]),
        ));
  }
}
