import 'package:flutter/material.dart';
import 'TimelineCard.dart';

class DetailsScreen extends StatelessWidget {
//declare the field that holds the data
  final TimelineCard timelineCard;

  //declare a constructor
  DetailsScreen({Key key, @required this.timelineCard}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(timelineCard.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(timelineCard.description),
      ),
    );
  }
}
