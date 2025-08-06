import 'package:flutter/material.dart';
import 'package:wash_app_flutter/core/utils/app_strings.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("تواصل معنا", style: customStyleText.textStyle16w500),
        centerTitle: true,
      ),
      body: Column(children: [

        ],
      ),
    );
  }
}
