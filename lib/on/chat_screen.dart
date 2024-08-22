import 'package:flutter/material.dart';
import 'package:untitled1/screens/second_screen.dart';

import '../person_model.dart';


class ChatScreen extends StatelessWidget{

  List<PersonModel> list = [
    PersonModel(name:'praveen',email: "p@gmail.com",phoneNumber: "13241414" ),
    PersonModel(name:'apraveen',email: "p@gmail.com",phoneNumber: "13241414" ),
    PersonModel(name:'bpraveen',email: "p@gmail.com",phoneNumber: "13241414" ),
    PersonModel(name:'cpraveen',email: "p@gmail.com",phoneNumber: "13241414" ),
    PersonModel(name:'dpraveen',email: "p@gmail.com",phoneNumber: "13241414" ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
        return SecondScreen(pName: list[index].name, pEmail: list[index].email,pNumber: list[index].phoneNumber,pageNavigation: false,);
      })
    );
  }

}


