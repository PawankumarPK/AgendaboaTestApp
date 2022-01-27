import 'package:agendaboa_flutter_app/screen/bottomNavBar/bottom_navbar_scaffold.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();
  FirebaseApp firebaseApp = await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Agenda Boa',

      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavBarScaffold(),
    );
  }
}
