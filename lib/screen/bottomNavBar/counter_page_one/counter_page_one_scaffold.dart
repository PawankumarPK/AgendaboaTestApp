import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:flutter/material.dart';


class CounterPageOneScaffold extends StatefulWidget {
  const CounterPageOneScaffold({Key? key}) : super(key: key);

  @override
  _CounterPageOneScaffoldState createState() => _CounterPageOneScaffoldState();
}

class _CounterPageOneScaffoldState extends State<CounterPageOneScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: ConstantColors.screenBackgroundColor,
        title: Text(ConstantStrings.counterPageOne)

      ),
    );
  }
}
