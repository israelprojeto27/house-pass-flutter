import 'package:flutter/material.dart';

class InputFieldEditWidget extends StatefulWidget {

  final String label;
  final IconData icon;
  final TextEditingController _controller;
  final int _maxLines;

  InputFieldEditWidget(this.label, this.icon, this._controller, this._maxLines);

  @override
  _InputFieldEditWidgetState createState() => _InputFieldEditWidgetState();
}

class _InputFieldEditWidgetState extends State<InputFieldEditWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  TextField(
        controller: widget._controller,
        maxLines: widget._maxLines,
        decoration: InputDecoration (
            icon: Icon(widget.icon,  color: Colors.red,),
            hintText: widget.label,
            focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.redAccent)
            ),
            contentPadding: EdgeInsets.only(
                left: 5,
                right: 30,
                top: 30,
                bottom: 30
            )
        ),
      )
    );
  }
}
