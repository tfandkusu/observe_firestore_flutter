// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:observe_firestore/data.dart';

import 'package:observe_firestore/presenter.dart';
import 'package:observe_firestore/repository.dart';

void main() {
  test('Member list with division header', () async {
    final members = [
      Member(division: 'Management', name: 'D'),
      Member(division: 'Management', name: 'C'),
      Member(division: 'Sales', name: 'E'),
      Member(division: 'Develop', name: 'B'),
      Member(division: 'Develop', name: 'A'),
    ];
    final expected = [
      Division(division: 'Develop', names: ['A', 'B']),
      Division(division: 'Management', names: ['C', 'D']),
      Division(division: 'Sales', names: ['E'])
    ];
    final container = ProviderContainer(overrides: [
      memberListRepositoryProvider.overrideWithValue(AsyncValue.data(members))
    ]);
    final futureDivisionList = container.read(divisionListProvider);
    final divisionList = await futureDivisionList;
    expect(divisionList, expected);
  });
}
