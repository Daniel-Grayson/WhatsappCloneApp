import 'package:flutter/material.dart';

import '../colors.dart';

class MobileLinkedDevices extends StatelessWidget {
  const MobileLinkedDevices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: const Text(
          "Linked Devices",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.35,
              width: MediaQuery.of(context).size.width * 0.70,
              decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                      image: AssetImage("assets/image/linkDevices.png"),
                      fit: BoxFit.fill),
                  shape: BoxShape.rectangle),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text("Use WhatsApp on other devices"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, bottom: 40.0),
              child: MaterialButton(
                minWidth: MediaQuery.of(context).size.width * 0.8,
                color: tabColor,
                onPressed: () {},
                child: const Text(
                  "LINK A DEVICE",
                  style: TextStyle(color: backgroundColor),
                ),
              ),
            ),
            const Text(
              "Use WhatsApp on web, desktop or other \n devices without keeping your phone online \n Learn More",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
