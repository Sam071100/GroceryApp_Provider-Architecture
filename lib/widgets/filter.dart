import 'package:flutter/material.dart';

class showBottomSheet1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          border: Border(top: BorderSide(color: themeData.disabledColor))),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
          Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
                icon: const Icon(Icons.close),
                onPressed: () {
                  Navigator.pop(context);
                }),
            Text(
              'FILTER/SORTING',
              style: TextStyle(fontSize: 12.0, color: Colors.black26),
            ),
            _verticalD(),
            OutlineButton(
                borderSide: BorderSide(color: Colors.amber.shade500),
                child: const Text('CLEAR'),
                textColor: Colors.amber.shade500,
                onPressed: () {
                  // Clear the selected Filter chip
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
            _verticalD(),
            OutlineButton(
                borderSide: BorderSide(color: Colors.amber.shade500),
                child: const Text('APPLY'),
                textColor: Colors.amber.shade500,
                onPressed: () {
                  // Apply the following Filters
                },
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
          ],
        ),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        )),
        Container(
            height: 400.0,
            margin: EdgeInsets.only(left: 7.0, top: 5.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _titleContainer("Sort"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            child: Wrap(
                          spacing: 5.0,
                          runSpacing: 3.0,
                          children: <Widget>[
                            filterChipWidget(chipName: 'Lowest Price First'),
                            filterChipWidget(chipName: 'Highest Price First'),
                            filterChipWidget(chipName: 'Alphabetical Order'),
                            filterChipWidget(chipName: 'Popular Price First'),
                            filterChipWidget(chipName: 'Best Price First'),
                            filterChipWidget(chipName: 'Most Rated First'),
                          ],
                        )),
                      ),
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _titleContainer('Filter'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            children: <Widget>[
                              filterChipWidget(chipName: 'Fruits'),
                              filterChipWidget(chipName: 'Vegetables'),
                              filterChipWidget(chipName: 'Special Price'),
                              filterChipWidget(chipName: 'Item of the day'),
                              filterChipWidget(chipName: 'Buy 1, GET 1 Free'),
                              filterChipWidget(chipName: 'Fresh'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 10.0,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: _titleContainer('Discount'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Wrap(
                            spacing: 5.0,
                            runSpacing: 5.0,
                            children: <Widget>[
                              filterChipWidget(chipName: '10% OR LESS'),
                              filterChipWidget(chipName: '20% OR LESS'),
                              filterChipWidget(chipName: '30% OR LESS'),
                              filterChipWidget(chipName: '40% OR LESS'),
                              filterChipWidget(chipName: '50% OR LESS'),
                              filterChipWidget(chipName: '70% OR LESS'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.blueGrey,
                      height: 10.0,
                    ),
                  ],
                ),
              ],
            )),
        _verticalDivider(),
        Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _verticalDivider(),
            Text(
              'AVAILIBILITY',
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        )),
        _verticalDivider(),
        Container(
            child: Align(
                alignment: const Alignment(0.0, -0.2),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _verticalDivider(),
                    Radio<int>(
                        value: 0,
                        groupValue: radioValue,
                        onChanged: handleRadioValueChanged),
                    Text(
                      'Available for this location',
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ))),
      ]),
    );
  }

  _verticalD() => Container(
        margin: EdgeInsets.only(left: 10.0, right: 0.0, top: 0.0, bottom: 0.0),
      );

  _verticalDivider() => Container(
        padding: EdgeInsets.all(2.0),
      );

  void handleRadioValueChanged(int value) {}
}

Widget _titleContainer(String myTitle) {
  return Text(
    myTitle,
    style: TextStyle(
        color: Colors.black, fontSize: 24.0, fontWeight: FontWeight.bold),
  );
}

int radioValue = 0;
bool switchValue = false;

class filterChipWidget extends StatefulWidget {
  final String chipName;

  filterChipWidget({Key key, this.chipName}) : super(key: key);

  @override
  _filterChipWidgetState createState() => _filterChipWidgetState();
}

class _filterChipWidgetState extends State<filterChipWidget> {
  var _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(widget.chipName),
      labelStyle: TextStyle(
          color: Color(0xff6200ee),
          fontSize: 16.0,
          fontWeight: FontWeight.bold),
      selected: _isSelected,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      backgroundColor: Color(0xffededed),
      onSelected: (isSelected) {
        setState(() {
          _isSelected = isSelected;
        });
      },
      selectedColor: Color(0xffeadffd),
    );
  }
}
