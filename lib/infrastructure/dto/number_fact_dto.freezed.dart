// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_fact_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NumberFactDto _$NumberFactDtoFromJson(Map<String, dynamic> json) {
  return _NumberFactDto.fromJson(json);
}

/// @nodoc
mixin _$NumberFactDto {
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'found')
  bool get isFound => throw _privateConstructorUsedError;
  double? get number => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NumberFactDtoCopyWith<NumberFactDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberFactDtoCopyWith<$Res> {
  factory $NumberFactDtoCopyWith(
          NumberFactDto value, $Res Function(NumberFactDto) then) =
      _$NumberFactDtoCopyWithImpl<$Res, NumberFactDto>;
  @useResult
  $Res call(
      {String text,
      @JsonKey(name: 'found') bool isFound,
      double? number,
      String type,
      String? date,
      int? year});
}

/// @nodoc
class _$NumberFactDtoCopyWithImpl<$Res, $Val extends NumberFactDto>
    implements $NumberFactDtoCopyWith<$Res> {
  _$NumberFactDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isFound = null,
    Object? number = freezed,
    Object? type = null,
    Object? date = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isFound: null == isFound
          ? _value.isFound
          : isFound // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NumberFactDtoCopyWith<$Res>
    implements $NumberFactDtoCopyWith<$Res> {
  factory _$$_NumberFactDtoCopyWith(
          _$_NumberFactDto value, $Res Function(_$_NumberFactDto) then) =
      __$$_NumberFactDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String text,
      @JsonKey(name: 'found') bool isFound,
      double? number,
      String type,
      String? date,
      int? year});
}

/// @nodoc
class __$$_NumberFactDtoCopyWithImpl<$Res>
    extends _$NumberFactDtoCopyWithImpl<$Res, _$_NumberFactDto>
    implements _$$_NumberFactDtoCopyWith<$Res> {
  __$$_NumberFactDtoCopyWithImpl(
      _$_NumberFactDto _value, $Res Function(_$_NumberFactDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? isFound = null,
    Object? number = freezed,
    Object? type = null,
    Object? date = freezed,
    Object? year = freezed,
  }) {
    return _then(_$_NumberFactDto(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      isFound: null == isFound
          ? _value.isFound
          : isFound // ignore: cast_nullable_to_non_nullable
              as bool,
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as double?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NumberFactDto implements _NumberFactDto {
  const _$_NumberFactDto(
      {required this.text,
      @JsonKey(name: 'found') required this.isFound,
      this.number,
      required this.type,
      this.date,
      this.year});

  factory _$_NumberFactDto.fromJson(Map<String, dynamic> json) =>
      _$$_NumberFactDtoFromJson(json);

  @override
  final String text;
  @override
  @JsonKey(name: 'found')
  final bool isFound;
  @override
  final double? number;
  @override
  final String type;
  @override
  final String? date;
  @override
  final int? year;

  @override
  String toString() {
    return 'NumberFactDto(text: $text, isFound: $isFound, number: $number, type: $type, date: $date, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumberFactDto &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.isFound, isFound) || other.isFound == isFound) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.year, year) || other.year == year));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, text, isFound, number, type, date, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NumberFactDtoCopyWith<_$_NumberFactDto> get copyWith =>
      __$$_NumberFactDtoCopyWithImpl<_$_NumberFactDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NumberFactDtoToJson(
      this,
    );
  }
}

abstract class _NumberFactDto implements NumberFactDto {
  const factory _NumberFactDto(
      {required final String text,
      @JsonKey(name: 'found') required final bool isFound,
      final double? number,
      required final String type,
      final String? date,
      final int? year}) = _$_NumberFactDto;

  factory _NumberFactDto.fromJson(Map<String, dynamic> json) =
      _$_NumberFactDto.fromJson;

  @override
  String get text;
  @override
  @JsonKey(name: 'found')
  bool get isFound;
  @override
  double? get number;
  @override
  String get type;
  @override
  String? get date;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$_NumberFactDtoCopyWith<_$_NumberFactDto> get copyWith =>
      throw _privateConstructorUsedError;
}
