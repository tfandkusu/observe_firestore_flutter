import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/all.dart';

import 'data.dart';

final memberListStreamProvider = StreamProvider.autoDispose((_) {
  CollectionReference ref = FirebaseFirestore.instance.collection('member');
  return ref.snapshots().map((snapshot) => snapshot.docs
      .map((doc) => doc.data())
      .map((data) => Member(name: data['name'], division: data['division']))
      .toList());
});
