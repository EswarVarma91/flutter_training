import 'package:flutter/material.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  TextEditingController _controller = TextEditingController();

  List<String> tasks = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                width: 300,
                child: TextFormField(
                  controller: _controller,
                ),
              ),
              ElevatedButton(onPressed: (){
                if(_controller.text.isNotEmpty) {
                  setState(() {
                    tasks.add(_controller.text);
                  });
                }
              }, child: const Text("add"),)
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ListView.builder(
                itemCount: tasks.length,
                  itemBuilder: (context, index){
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  margin: const EdgeInsets.all(5),
                  padding: const EdgeInsets.all(10),
                  child: Text(tasks[index],
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                    ),
                  ),
                );
              },),
            ),
          ),
        ],
      ),
    );
  }
}
