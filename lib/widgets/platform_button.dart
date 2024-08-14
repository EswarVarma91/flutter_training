import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlatformButton extends StatelessWidget {

  const PlatformButton({super.key,});

  @override
  Widget build(BuildContext context) {
    if(Platform.isAndroid){
      return ElevatedButton(onPressed: (){}, child: const Text("Submit"),);
    }else{
      return CupertinoButton(onPressed: (){},child: const Text("Submit"),);
    }
  }
}
