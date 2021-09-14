import 'package:flutter/material.dart';

class ItemSwitchConfigurationWidget extends StatefulWidget {

  final String label;
  final bool defaultValue;
  final Function onChanged;
  ItemSwitchConfigurationWidget({required this.label, required this.defaultValue, required this.onChanged});

  @override
  _ItemSwitchConfigurationWidgetState createState() => _ItemSwitchConfigurationWidgetState();
}

class _ItemSwitchConfigurationWidgetState extends State<ItemSwitchConfigurationWidget> {

  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.label),
        Switch(
          value: widget.defaultValue,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
              widget.onChanged(value);
            });
          },
          activeTrackColor: Colors.redAccent,
          activeColor: Colors.red,
        ),
      ],
    );

  }
}
