import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({
    Key? key,
    required this.title,
    required this.onPress,
    this.colors = const Color.fromRGBO(235,159,73, 1),
    this.textColor = Colors.white
  }) : super(key: key);
  final title;
  final colors;
  final textColor;
  final GestureTapCallback onPress;
  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      child: TextButton(
        child: Text(
          widget.title,
          style: TextStyle(color: widget.textColor, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  side: const BorderSide(color: Color.fromRGBO(235,159,73, 1))
              )
          ),
            backgroundColor: MaterialStateProperty.all(
              widget.colors,)),
        onPressed: widget.onPress,
      ),
    );
  }
}
