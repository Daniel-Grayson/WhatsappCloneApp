import 'package:flutter/material.dart';

import '../colors.dart';

class SenderMessageCard extends StatelessWidget {
  final String message;
  final String date;

  const SenderMessageCard({Key? key, required this.message, required this.date})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
            elevation: 1,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: messageColor,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 5,
                    right: 30,
                    left: 10,
                    bottom: 20,
                  ),
                  child: Text(message,
                      style: const TextStyle(
                        fontSize: 16,
                      )),
                ),
                Positioned(
                  bottom: 2,
                  right: 10,
                  child: Row(
                    children: [
                      Text(date,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.white60,
                          )),
                      const SizedBox(
                        width: 5,
                      ),
                      const Icon(
                        Icons.done_all_rounded,
                        size: 20,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
