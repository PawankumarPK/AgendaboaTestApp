import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:flutter/material.dart';

class CounterPageThreeScaffold extends StatefulWidget {
  const CounterPageThreeScaffold({Key? key}) : super(key: key);

  @override
  _CounterPageThreeScaffoldState createState() => _CounterPageThreeScaffoldState();
}

class _CounterPageThreeScaffoldState extends State<CounterPageThreeScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: ConstantColors.screenBackgroundColor,
          title: Text(ConstantStrings.counterPageThree)

      ),
    );
  }
}
