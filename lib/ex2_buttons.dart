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
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButton(
                  label: 'Submit',
                  icon: Icons.check
                ),
                SizedBox(height: 20),
                CustomButton(
                  label: 'Time',
                  icon: Icons.access_time,
                  iconPosition: IconPosition.right,
                  type: ButtonType.secondary,
                ),
                SizedBox(height: 20),
                CustomButton(
                  label: 'Account',
                  icon: Icons.account_tree_outlined,
                  iconPosition: IconPosition.right,
                  type: ButtonType.disabled,
                ),
              ],
            ),
          ),
        ), // YOUR CODE
      ),
    ),
  );
}

class CustomButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final IconPosition iconPosition;
  final ButtonType type;

  const CustomButton({
    super.key,
    required this.label,
    required this.icon,
    this.iconPosition = IconPosition.left,
    this.type = ButtonType.primary,
  });

  @override
  Widget build(BuildContext context) {
    Color buttonColor;
    List<Widget> buttonChildren;

    if(type == ButtonType.primary) {
          buttonColor = Colors.blue;
        } else if(type == ButtonType.secondary) {
          buttonColor = Colors.green;
        } else {
          buttonColor = Colors.grey;
        }
    
    if(iconPosition == IconPosition.left) {
      buttonChildren = [
        Icon(icon, color: Colors.black38),
        SizedBox(width: 10),
        Text(
          label,
          style: TextStyle(
            color: Colors.black38,
          )
        ),
      ];
    } else {
      buttonChildren = [
        Text(
          label,
          style: TextStyle(
            color: Colors.black38,
          )
        ),
        SizedBox(width: 10),
        Icon(icon, color: Colors.black38),
      ];
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40),
      width: 500,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: buttonChildren,
      ),
    );
  }
}
