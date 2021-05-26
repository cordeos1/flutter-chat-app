import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String txtButton;
  final Function onPressed;

  const CustomButton({
    Key key, 
    @required this.txtButton,
    @required this.onPressed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
      elevation: 2,
      primary: Colors.blue,
      textStyle: TextStyle(
        color:  Colors.white,
        fontSize: 17
      ),
      shape: StadiumBorder(),
    );
    return ElevatedButton(
      style: raisedButtonStyle,
      onPressed: this.onPressed,
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(txtButton)
        ),
      ),
    );
  }
}