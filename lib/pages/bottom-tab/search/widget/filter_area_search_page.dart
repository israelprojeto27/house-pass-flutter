import 'package:flutter/material.dart';

class FilterAreaSearchPage extends StatefulWidget {
  @override
  _FilterAreaSearchPageState createState() => _FilterAreaSearchPageState();
}

class _FilterAreaSearchPageState extends State<FilterAreaSearchPage> {

  RangeValues _currentRangeValues = const RangeValues(0, 10000);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Área em m²',
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: MediaQuery.of(context).size.width > 360 ? 18 : 16,
                  fontWeight: FontWeight.normal),
            ),
          ),
          RangeSlider(
            values: _currentRangeValues,
            min: 0,
            max: 1000000,
            divisions: 20,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Divider(
            color: Colors.black,
            height: 25,
          )
        ],
      ),
    );
  }
}
