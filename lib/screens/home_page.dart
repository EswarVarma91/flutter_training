import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: const Center(
        //   child: Icon(Icons.phone),
        // ),
        // elevation: 5,
        // centerTitle: true,
        // actions: [
        //   InkWell(
        //       onTap: () {
        //         print("qr code");
        //       },
        //       child: const Icon(Icons.qr_code)),
        //   const SizedBox(
        //     width: 15,
        //   ),
        //   InkWell(
        //       onTap: () {
        //         print("camera");
        //       },
        //       child: const Icon(Icons.camera_alt_outlined)),
        //   const SizedBox(
        //     width: 15,
        //   ),
        //   const Icon(Icons.menu)
        // ],
        title: const Text(
          "My Home Page",
        ),
      ),
      body: const Column(
        children: [
          Text("adwfgegr"),
          Text("fscfergceg"),
        ],
      ),
    );
  }
}
