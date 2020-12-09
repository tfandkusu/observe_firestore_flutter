import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
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
    return DefaultStickyHeaderController(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Member List"),
            ),
            body: MainBody()));
  }
}

class MainBody extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final futureDivisionList = useProvider(divisionListProvider);
    final snapshot = useFuture(futureDivisionList);
    if (snapshot.hasData) {
      final headerTextStyle =
          Theme.of(context).textTheme.subtitle2.copyWith(color: Colors.white);
      final headerBackgroundColor = Color.fromARGB(0xff, 0x66, 0x66, 0x66);
      final itemTextStyle = Theme.of(context).textTheme.bodyText2;
      return CustomScrollView(
        slivers: snapshot.data
            .map((e) => SliverStickyHeader(
                  header: Container(
                    // 部署名ヘッダー
                    child: Text(e.division, style: headerTextStyle),
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(color: headerBackgroundColor),
                  ),
                  sliver: SliverList(
                      delegate: SliverChildBuilderDelegate(
                          (context, i) => Container(
                              // 部署に所属するメンバー氏名
                              child: Text(e.names[i], style: itemTextStyle),
                              padding: EdgeInsets.fromLTRB(16, 8, 16, 8)),
                          childCount: e.names.length)),
                ))
            .toList(),
      );
    } else {
      return Center(child: CircularProgressIndicator());
    }
  }
}
