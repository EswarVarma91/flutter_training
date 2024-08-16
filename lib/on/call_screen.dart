import 'package:flutter/material.dart';
import 'package:untitled1/utils/validator.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // _controller.addListener((){
    //   print(_controller.text.toString());
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 38.0,right: 38.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Form(
                key: _formKey,
                child: Column(children: [
                  TextFormField(
                    validator: (value) {
                      if(value!.length < 1){
                        return "Please Enter Person Name";
                      }
                    },
                    controller: _controllerName,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Person Name",
                        suffixIcon: Icon(Icons.person),
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 25,),
                  TextFormField(
                    autocorrect: true,
                    controller: _controllerEmail,
                    validator: (value) {
                      if(value!.length < 1){
                        return "Please Enter Email";
                      }else if(!value.isValidEmail()){
                        return 'Please Enter Correct Email';
                      }
                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email Name",
                        suffixIcon: Icon(Icons.email),
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    _formKey.currentState!.validate();
                  }, child: Text("Submit"))
                ],)
              )
            ],),
        ),
      ),
    );
  }



}


