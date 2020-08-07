import 'package:flutter/material.dart';
import 'TimelineCard.dart';
import 'DetailsScreen.dart';

void main() => runApp(TimelineApp());

class TimelineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Timeline",
        home: Scaffold(
          appBar: AppBar(
            title: Text('Timeline'),
          ),
          body: Center(
            child: Timeline(),
          ),
        ));
  }
}

class Timeline extends StatefulWidget {
  const Timeline({
    Key key,
  }) : super(key: key);

  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  List<TimelineCard> timeline;

  @override
  void initState() {
    super.initState();
    timeline = _getCards();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //listview
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(timelineCard: timeline[index]),
                    ),
                  );
                },
                //row
                child: Container(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          // flex: 1,
                          child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                              right:
                                  BorderSide(width: 1, color: Colors.blue[300]),
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 10, color: Colors.black26)
                            ]),
                        height: 35,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              timeline[index].date,
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      )),
                      Column(
                        children: <Widget>[
                          Container(
                            width: 2,
                            height: 50,
                            color: Colors.grey,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 5, right: 7),
                            padding: EdgeInsets.all(3),
                            decoration: BoxDecoration(
                                color: Colors.blue[300],
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              timeline[index].icon,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                            width: 2,
                            height: 50,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                      Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border(
                                    top: BorderSide(
                                        width: 4, color: Colors.blue[300])),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 10, color: Colors.black26)
                                ]),
                            height: 130,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  timeline[index].title,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(timeline[index].description,
                                    style: TextStyle(fontSize: 16)),
                              ],
                            ),
                          ))
                    ],
                  ),
                ));
          }),
    );
  }

  List<TimelineCard> _getCards() {
    List<TimelineCard> timelineCard = [];

    timelineCard.add(TimelineCard(
        'Title 1',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        '1700-1888',
        Icons.check));
    timelineCard.add(TimelineCard(
        'Title 2',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'Year',
        Icons.check));
    timelineCard.add(TimelineCard(
        'Title 3',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'Year',
        Icons.check));
    timelineCard.add(TimelineCard(
        'Title 4',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'Year',
        Icons.check));
    timelineCard.add(TimelineCard(
        'Title 5',
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
        'Year',
        Icons.check));

    return timelineCard;
  }
}
