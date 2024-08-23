import 'package:flutter/material.dart';
import 'package:untitled1/screens/second_screen.dart';
import 'package:untitled1/utils/validator.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerNumber = TextEditingController();
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
                      if(value!.isEmpty){
                        return "Please Enter Person Name";
                      }
                      return null;
                    },
                    controller: _controllerName,
                    decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Person Name",
                        suffixIcon: const Icon(Icons.person),
                        prefixIcon: const Icon(Icons.person),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 25,),
                  TextFormField(
                    autocorrect: true,
                    controller: _controllerEmail,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please Enter Email";
                      }else if(!value.isValidEmail()){
                        return 'Please Enter Correct Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        labelText: "Email",
                        hintText: "Email Name",
                        suffixIcon: const Icon(Icons.email),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  TextFormField(
                    autocorrect: true,
                    controller: _controllerNumber,
                    validator: (value) {
                      if(value!.isEmpty){
                        return "Please Enter Number";
                      }
                      return null;
                    },
                    maxLength: 10,
                    decoration: InputDecoration(
                        labelText: "Number",
                        hintText: "Mobile Number",

                        suffixIcon: const Icon(Icons.email),
                        prefixIcon: const Icon(Icons.email),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                        )
                    ),
                  ),
                  const SizedBox(height: 30,),
                  ElevatedButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      String personName = _controllerName.text.toString();
                      String personEmail = _controllerEmail.text.toString();
                      String personNumber = _controllerNumber.text.toString();
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => SecondScreen(pName: personName,pEmail: personEmail, pNumber: personNumber,),),);
                    }
                  }, child: const Text("Submit"))
                ],)
              )
            ],),
        ),
      ),
    );
  }



}


