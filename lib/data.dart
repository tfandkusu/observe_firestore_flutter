import 'package:freezed_annotation/freezed_annotation.dart';

part 'data.freezed.dart';

/// メンバー
@freezed
abstract class Member with _$Member {
  const factory Member({String name, String division}) = _Member;
}

@freezed
abstract class Division with _$Division {
  const factory Division({String division, List<String> names}) = _Division;
}
