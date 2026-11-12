import 'package:flutter/material.dart';

enum ButtonType {primary, secondary, disabled}
enum IconPosition {left, right}

// EX 2 – The buttons (handout page: EX 2)
// A StatelessWidget called CustomButton. Use one enum for the button type
// and one enum for the icon position.

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Container(
            width: 500,
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.check, color: Colors.black38,),
                SizedBox(width: 10),
                Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.black38,
                  )
                )
              ],
            )
          ),
        ), // YOUR CODE
      ),
    ),
  );
}
