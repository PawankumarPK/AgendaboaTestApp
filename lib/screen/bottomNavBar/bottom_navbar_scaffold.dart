import 'package:agendaboa_flutter_app/res/constant_colors.dart';
import 'package:agendaboa_flutter_app/res/constant_strings.dart';
import 'package:agendaboa_flutter_app/res/dimens.dart';
import 'package:agendaboa_flutter_app/screen/bottomNavBar/counter_page_one/counter_page_one_scaffold.dart';
import 'package:agendaboa_flutter_app/screen/bottomNavBar/counter_page_two/counter_page_two_scaffold.dart';
import 'package:agendaboa_flutter_app/utils/custom_objects.dart';
import 'package:agendaboa_flutter_app/utils/exit_app_dialogbox.dart';
import 'package:agendaboa_flutter_app/utils/size_config.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import 'counter_page_one/counter_page_one_scaffold.dart';
import 'counter_page_three/counter_page_three_scaffold.dart';
import 'counter_page_two/counter_page_two_scaffold.dart';

class BottomNavBarScaffold extends StatefulWidget {
  const BottomNavBarScaffold({Key? key}) : super(key: key);

  @override
  _BottomNavBarScaffoldState createState() => _BottomNavBarScaffoldState();
}

class _BottomNavBarScaffoldState extends State<BottomNavBarScaffold> {
  final dbReference = FirebaseDatabase.instance.reference();

  int selectedIndex = 0;
  late DateTime currentBackPressTime;

  @override
  void initState() {
    super.initState();
    selectedIndex = CustomObjects.activeBottomNavBar;
  }

  ///------------------ List of screen --------------------------------
  List<Widget> widgetOption = <Widget>[
    CounterPageOneScaffold(),
    CounterPageTwoScaffold(),
    CounterPageThreeScaffold()
  ];

  ///---- After click on nav bar item , selectedIndex value store in index value  ------
  void onItemTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            backgroundColor: ConstantColors.screenBackgroundColor,
            title: Text(
              ConstantStrings.counterPageOne,
            ),
            actions: <Widget>[
              Padding(
                padding: EdgeInsets.all(SizeConfig.defaultSize! * Dimens.size1),
                child: MaterialButton(
                  color: Colors.blue,
                  onPressed: () {
                    resetCounterValue();
                  },
                  child: const Text(
                    'Reset ',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ]),

        ///------------ Show screen content in center & change selectedIndex value respectively -----------------
        body: Center(
          child: widgetOption.elementAt(selectedIndex),
        ),

        ///--------------- Change theme of BottomNavBar ---------------------------
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: ConstantColors.secondaryColor,
          ),

          ///--------------- BottomNavBar with icon and label ---------------------------
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: ConstantStrings.home,
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: ConstantStrings.tournaments,
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_balance_wallet),
                  label: ConstantStrings.wallet),
            ],
            currentIndex: selectedIndex,
            selectedItemColor: ConstantColors.selectedColor,
            onTap: onItemTap,
          ),
        ),
      ),
    );
  }

  ///--------------------------- Exit backPress ------------------------
  Future<bool> _onBackPressed() async {
    return await showDialog(
        context: context, builder: (context) => ExitAppDialogBox());
  }

  ///--------------------------- Reset counter in db ------------------------
  void resetCounterValue() {
    dbReference.child("counterProfile").update({"counterOne": 0});
    dbReference.child("counterProfile").update({"counterTwo": 0});
    dbReference.child("counterProfile").update({"counterThree": 0});

  }
}
