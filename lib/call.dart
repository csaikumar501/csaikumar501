import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Call extends StatelessWidget {
  const Call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Call App"),
      ),
      body: Center(
        heightFactor: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              icon: const Icon(Icons.call),
              onPressed: () => _makePhoneCall("+919989524135"),
              label: const Text("Call"),
            ),
          ],
        ),
      ),
    );
  }
}

Future<void> _makePhoneCall(String phoneNumber) async {
  FlutterPhoneDirectCaller.callNumber(phoneNumber);
  // final Uri launchUri = Uri(
  //   scheme: 'tel',
  //   path: phoneNumber,
  // );
  // await launchUrl(launchUri);
}
