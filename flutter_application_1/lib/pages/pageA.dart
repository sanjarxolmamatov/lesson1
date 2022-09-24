import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/pages/pageB.dart';

class PageA extends StatefulWidget {
  static String id = 'pageA_id';
  const PageA({super.key});

  @override
  State<PageA> createState() => _PageAState();
}

String appMatn = '';

class _PageAState extends State<PageA> {
  void info() async {
    setState(() async {
      String malumot = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PageB(name: 'husan'),
        ),
      );
      setState(() {
        appMatn = malumot;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appMatn.toString()),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            info();
          },
          child: Text("ikkinchi oynaga o'tish"),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
