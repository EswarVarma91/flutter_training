import 'package:flutter/material.dart';
import 'package:untitled1/on/call_screen.dart';
import 'package:untitled1/on/chat_screen.dart';
import 'package:untitled1/on/update_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int curIndex = 0;

  final List<Widget> _screens = [
    CallScreen(),
    ChatScreen(),
    UpdateScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curIndex,
        onTap: (index){
          setState(() {
            curIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: "Calls",
            icon: Icon(
              Icons.add,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.subdirectory_arrow_left,
            ),
          ),
          BottomNavigationBarItem(
            label: "Update",
            icon: Icon(
              Icons.subdirectory_arrow_right,
            ),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        // leading: const Center(
        //   child: Icon(Icons.phone),
        // ),
        // elevation: 5,
        // centerTitle: true,
        actions: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          // OutlinedButton(onPressed: () {}, child: Text("a")),
          // ElevatedButton(
          //   child: Text('Submit'),
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //       foregroundColor: Colors.white,
          //       textStyle: TextStyle(fontWeight: FontWeight.bold),
          //       backgroundColor: Colors.blueAccent),
          // ),
          // InkWell(
          //     onTap: () {
          //       print("qr code");
          //     },
          //     child: const Icon(Icons.qr_code)),
          // const SizedBox(
          //   width: 15,
          // ),
          // InkWell(
          //     onTap: () {
          //       print("camera");
          //     },
          //     child: const Icon(Icons.camera_alt_outlined)),
          // const SizedBox(
          //   width: 15,
          // ),
          // const Icon(Icons.menu)
        ],
        title: const Text(
          "My Home Page",
        ),
      ),
      body: _screens[curIndex]
    );
  }
}
