import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final String? pName;
  final String? pEmail;
  final String? pNumber;
  final bool? pageNavigation;
  const SecondScreen( {super.key,this.pName, this.pEmail, this.pNumber = '',this.pageNavigation = true} );

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return widget.pageNavigation! ? Scaffold(
      appBar: AppBar(title: const Text("Second Screen"),),
      body: buildPersonDetails(),
    ): buildPersonDetails() ;
  }

   buildPersonDetails() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.pName.toString(),style: const TextStyle(fontSize: 20),),
            Text(widget.pEmail.toString(),style: const TextStyle(fontSize: 14),),
            Text(widget.pNumber.toString(),style: const TextStyle(fontSize: 14),)
          ],
      ),
    );
  }
}
