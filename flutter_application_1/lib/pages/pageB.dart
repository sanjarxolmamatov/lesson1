import 'package:flutter/material.dart';

class PageB extends StatelessWidget {
  static String id = 'pageB_id';
  String? name;
  PageB({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'qutaq bashara');
          },
          child: Text(name!),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
