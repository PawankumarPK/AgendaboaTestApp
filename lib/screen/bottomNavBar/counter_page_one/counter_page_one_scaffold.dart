import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:agendaboa_flutter_app/res/dimens.dart';
import 'package:agendaboa_flutter_app/screen/bottomNavBar/counter_page_one/screen/counter_page_one_screen.dart';
import 'package:agendaboa_flutter_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class CounterPageOneScaffold extends StatefulWidget {
  const CounterPageOneScaffold({Key? key}) : super(key: key);

  @override
  _CounterPageOneScaffoldState createState() => _CounterPageOneScaffoldState();
}

class _CounterPageOneScaffoldState extends State<CounterPageOneScaffold> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CounterPageOneScreen(),
    );
  }
}
