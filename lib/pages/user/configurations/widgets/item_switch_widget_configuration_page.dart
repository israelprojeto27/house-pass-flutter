import 'package:flutter/material.dart';

class ItemSwitchConfigurationWidget extends StatefulWidget {

  final String label;

  ItemSwitchConfigurationWidget(this.label);

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
          value: isSwitched,
          onChanged: (value) {
            setState(() {
              isSwitched = value;
            });
          },
          activeTrackColor: Colors.redAccent,
          activeColor: Colors.red,
        ),
      ],
    );
  }
}
