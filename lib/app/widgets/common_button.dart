import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: BorderSide(
          color: Colors.amber,
          width: 2
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
        backgroundColor: Colors.black87,
        minimumSize: Size(100, 50)
      ),
        onPressed: (){},
        child: Text('Contact Me',style: TextStyle(color: Colors.white))
    );
  }
}
