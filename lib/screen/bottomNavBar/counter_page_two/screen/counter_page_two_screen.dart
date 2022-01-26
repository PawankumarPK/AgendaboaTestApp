import 'package:agendaboa_flutter_app/res/dimens.dart';
import 'package:agendaboa_flutter_app/utils/size_config.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class CounterPageTwoScreen extends StatefulWidget {
  const CounterPageTwoScreen({Key? key}) : super(key: key);

  @override
  _CounterPageTwoScreenState createState() => _CounterPageTwoScreenState();
}

class _CounterPageTwoScreenState extends State<CounterPageTwoScreen> {
  final dbReference = FirebaseDatabase.instance.reference();
  int _counter = 0;

  @override
  void initState() {
    super.initState();
    dbReference.child("counterProfile").child("counterTwo").onValue.listen((event) {
      setState(() {
        _counter = event.snapshot.value;
      });

    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      Positioned(
        right: 1,
        bottom: 1,
        child: Padding(
          padding: EdgeInsets.all(SizeConfig.defaultSize! * Dimens.size1),
          child: FloatingActionButton(
            onPressed: incrementCounterValue,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    ]);
  }

  ///--------------------------- Counter increment function ------------------------
  void incrementCounterValue() {
    setState(() {
      _counter++;
      updateCounterValue();
    });
  }

  ///--------------------------- Create db with fields ------------------------
  void _createDB() {
    dbReference.child("counterProfile").set({
      "counterOne": 0,
      "counterTwo": 0,
      "counterThree": 0
    });
  }

  ///--------------------------- Update counter in db ------------------------
  updateCounterValue() {
    dbReference.child("counterProfile").update({"counterTwo": _counter});
  }

}
