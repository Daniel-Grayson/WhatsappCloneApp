import 'package:flutter/material.dart';

class MobileStatusList extends StatelessWidget {
  const MobileStatusList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.8,
      width: MediaQuery.of(context).size.width * 0.999,
    );
  }
}
