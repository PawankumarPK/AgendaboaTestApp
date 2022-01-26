import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:flutter/material.dart';


class CounterPageTwoScaffold extends StatefulWidget {
  const CounterPageTwoScaffold({Key? key}) : super(key: key);

  @override
  _CounterPageTwoScaffoldState createState() => _CounterPageTwoScaffoldState();
}

class _CounterPageTwoScaffoldState extends State<CounterPageTwoScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: ConstantColors.screenBackgroundColor,
          title: Text(ConstantStrings.counterPageTwo)

      ),
    );;
  }
}
