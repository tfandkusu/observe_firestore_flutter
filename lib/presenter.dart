import 'dart:async';

import 'package:hooks_riverpod/all.dart';
import 'package:observe_firestore/repository.dart';

import 'data.dart';

final divisionListProvider = Provider.autoDispose((ref) async {
  // 最新の情報をwatchする
  final futureMemberList = ref.watch(memberListRepositoryProvider.last);
  // Future<List<Member>>なので、値を取得できるまで待つ。
  final memberList = await futureMemberList;
  // 部署名順、次に氏名順に並べる。
  memberList.sort((a, b) {
    if (a.division == b.division) {
      return a.name.compareTo(b.name);
    } else {
      return a.division.compareTo(b.division);
    }
  });
  // 部署1 - メンバー多のデータに変換する
  final divisions = List<Division>();
  for (final e in memberList) {
    if (divisions.isEmpty || divisions.last.division != e.division) {
      divisions.add(Division(division: e.division, names: []));
    }
    divisions.last.names.add(e.name);
  }
  return divisions;
});

final streamDivisionListProvider = StreamProvider.autoDispose((ref) {
  final streamController = StreamController<List<Division>>();
  ref.onDispose(() {
    streamController.close();
  });
  final streamMemberList = ref.read(memberListRepositoryProvider);
  streamMemberList.whenData((memberList) {
    memberList.sort((a, b) {
      if (a.division == b.division) {
        return a.name.compareTo(b.name);
      } else {
        return a.division.compareTo(b.division);
      }
    });
    final divisions = List<Division>();
    for (final e in memberList) {
      if (divisions.isEmpty || divisions.last.division != e.division) {
        divisions.add(Division(division: e.division, names: []));
      }
      divisions.last.names.add(e.name);
    }
    streamController.sink.add(divisions);
  });
  return streamController.stream;
});
