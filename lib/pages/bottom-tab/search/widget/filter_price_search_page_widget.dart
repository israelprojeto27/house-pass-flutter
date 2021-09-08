import 'package:flutter/material.dart';

class FilterPriceSearchPageWidget extends StatefulWidget {
  @override
  _FilterPriceSearchPageState createState() => _FilterPriceSearchPageState();
}

class _FilterPriceSearchPageState extends State<FilterPriceSearchPageWidget> {
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
              'Valor em R\$',
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
