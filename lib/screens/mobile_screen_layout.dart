import 'package:flutter/material.dart';
import '../colors.dart';
import '../widgets/contact_list.dart';

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
                IconButton(
                    onPressed: () {},
                    icon:
                        const Icon(Icons.more_vert_rounded, color: Colors.grey))
              ],
              bottom: const TabBar(
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
            body: const ContactsList(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: tabColor,
              child: const Icon(
                Icons.insert_comment_rounded,
                color: Colors.white,
              ),
            )));
  }
}
