import 'package:agendaboa_flutter_app/screen/bottomNavBar/counter_page_two/screen/counter_page_two_screen.dart';
import 'package:flutter/material.dart';


class CounterPageTwoScaffold extends StatefulWidget {
  const CounterPageTwoScaffold({Key? key}) : super(key: key);

  @override
  _CounterPageTwoScaffoldState createState() => _CounterPageTwoScaffoldState();
}

class _CounterPageTwoScaffoldState extends State<CounterPageTwoScaffold> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CounterPageTwoScreen(),
    );;
  }
}
