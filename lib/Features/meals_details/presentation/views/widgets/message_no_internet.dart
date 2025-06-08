import 'package:flutter/material.dart';

class MessageOfNoInterNet extends StatelessWidget {
  const MessageOfNoInterNet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.wifi_off_sharp,
            size: 66,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'No Internet Connection ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text(
            'Try later !',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
