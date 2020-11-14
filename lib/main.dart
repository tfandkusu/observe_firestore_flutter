import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/all.dart';

import 'data.dart';
import 'presenter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Member list',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Member List"),
        ),
        body: MainBody());
  }
}

class MainBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final futureDivisionList = useProvider(divisionListProvider);
    return FutureBuilder(
        future: futureDivisionList,
        builder:
            (BuildContext context, AsyncSnapshot<List<Division>> snapshot) {
          if (snapshot.hasData) {
            print(snapshot.data.length);
            return const Center();
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
