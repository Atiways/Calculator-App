import 'package:flutter/material.dart';
class Rbutton extends StatelessWidget {
  const Rbutton({Key? key,required this.textb,required this.todo}) : super(key: key);
 final String textb;
 final VoidCallback todo;


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          MaterialButton(onPressed: todo, child: Text(textb),color: Colors.grey,)
        ],
      ),
    );
  }
}
