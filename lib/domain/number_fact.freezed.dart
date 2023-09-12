// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_fact.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberFact {
  String get text => throw _privateConstructorUsedError;
  double? get number => throw _privateConstructorUsedError;
  bool get isFound => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NumberFactCopyWith<NumberFact> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberFactCopyWith<$Res> {
  factory $NumberFactCopyWith(
          NumberFact value, $Res Function(NumberFact) then) =
      _$NumberFactCopyWithImpl<$Res, NumberFact>;
  @useResult
  $Res call({String text, double? number, bool isFound});
}

/// @nodoc
class _$NumberFactCopyWithImpl<$Res, $Val extends NumberFact>
    implements $NumberFactCopyWith<$Res> {
  _$NumberFactCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? number = freezed,
    Object? isFound = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
      isFound: null == isFound
          ? _value.isFound
          : isFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumberFactCopyWith<$Res>
    implements $NumberFactCopyWith<$Res> {
  factory _$$_NumberFactCopyWith(
          _$_NumberFact value, $Res Function(_$_NumberFact) then) =
      __$$_NumberFactCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, double? number, bool isFound});
}

/// @nodoc
class __$$_NumberFactCopyWithImpl<$Res>
    extends _$NumberFactCopyWithImpl<$Res, _$_NumberFact>
    implements _$$_NumberFactCopyWith<$Res> {
  __$$_NumberFactCopyWithImpl(
      _$_NumberFact _value, $Res Function(_$_NumberFact) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? number = freezed,
    Object? isFound = null,
  }) {
    return _then(_$_NumberFact(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
      isFound: null == isFound
          ? _value.isFound
          : isFound // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NumberFact implements _NumberFact {
  const _$_NumberFact({this.text = '', this.number, this.isFound = true});

  @override
  @JsonKey()
  final String text;
  @override
  final double? number;
  @override
  @JsonKey()
  final bool isFound;

  @override
  String toString() {
    return 'NumberFact(text: $text, number: $number, isFound: $isFound)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberFact &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.isFound, isFound) || other.isFound == isFound));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, number, isFound);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberFactCopyWith<_$_NumberFact> get copyWith =>
      __$$_NumberFactCopyWithImpl<_$_NumberFact>(this, _$identity);
}

abstract class _NumberFact implements NumberFact {
  const factory _NumberFact(
      {final String text,
      final double? number,
      final bool isFound}) = _$_NumberFact;

  @override
  String get text;
  @override
  double? get number;
  @override
  bool get isFound;
  @override
  @JsonKey(ignore: true)
  _$$_NumberFactCopyWith<_$_NumberFact> get copyWith =>
      throw _privateConstructorUsedError;
}
