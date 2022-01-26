import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:agendaboa_flutter_app/res/dimens.dart';
import 'package:agendaboa_flutter_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CounterPageOneScreen extends StatefulWidget {
  const CounterPageOneScreen({Key? key}) : super(key: key);

  @override
  _CounterPageOneScreenState createState() => _CounterPageOneScreenState();
}

class _CounterPageOneScreenState extends State<CounterPageOneScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              ConstantStrings.youHavePushedTheButtonThisManyTimes,
            ),
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
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
        ),
      ),
    ]);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
}
