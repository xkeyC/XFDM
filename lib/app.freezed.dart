// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppGlobalState {
  String? get applicationSupportDir => throw _privateConstructorUsedError;
  String? get applicationBinaryModuleDir => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppGlobalStateCopyWith<AppGlobalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppGlobalStateCopyWith<$Res> {
  factory $AppGlobalStateCopyWith(
          AppGlobalState value, $Res Function(AppGlobalState) then) =
      _$AppGlobalStateCopyWithImpl<$Res, AppGlobalState>;
  @useResult
  $Res call(
      {String? applicationSupportDir, String? applicationBinaryModuleDir});
}

/// @nodoc
class _$AppGlobalStateCopyWithImpl<$Res, $Val extends AppGlobalState>
    implements $AppGlobalStateCopyWith<$Res> {
  _$AppGlobalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationSupportDir = freezed,
    Object? applicationBinaryModuleDir = freezed,
  }) {
    return _then(_value.copyWith(
      applicationSupportDir: freezed == applicationSupportDir
          ? _value.applicationSupportDir
          : applicationSupportDir // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationBinaryModuleDir: freezed == applicationBinaryModuleDir
          ? _value.applicationBinaryModuleDir
          : applicationBinaryModuleDir // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppGlobalStateImplCopyWith<$Res>
    implements $AppGlobalStateCopyWith<$Res> {
  factory _$$AppGlobalStateImplCopyWith(_$AppGlobalStateImpl value,
          $Res Function(_$AppGlobalStateImpl) then) =
      __$$AppGlobalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? applicationSupportDir, String? applicationBinaryModuleDir});
}

/// @nodoc
class __$$AppGlobalStateImplCopyWithImpl<$Res>
    extends _$AppGlobalStateCopyWithImpl<$Res, _$AppGlobalStateImpl>
    implements _$$AppGlobalStateImplCopyWith<$Res> {
  __$$AppGlobalStateImplCopyWithImpl(
      _$AppGlobalStateImpl _value, $Res Function(_$AppGlobalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationSupportDir = freezed,
    Object? applicationBinaryModuleDir = freezed,
  }) {
    return _then(_$AppGlobalStateImpl(
      applicationSupportDir: freezed == applicationSupportDir
          ? _value.applicationSupportDir
          : applicationSupportDir // ignore: cast_nullable_to_non_nullable
              as String?,
      applicationBinaryModuleDir: freezed == applicationBinaryModuleDir
          ? _value.applicationBinaryModuleDir
          : applicationBinaryModuleDir // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AppGlobalStateImpl implements _AppGlobalState {
  const _$AppGlobalStateImpl(
      {this.applicationSupportDir, this.applicationBinaryModuleDir});

  @override
  final String? applicationSupportDir;
  @override
  final String? applicationBinaryModuleDir;

  @override
  String toString() {
    return 'AppGlobalState(applicationSupportDir: $applicationSupportDir, applicationBinaryModuleDir: $applicationBinaryModuleDir)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppGlobalStateImpl &&
            (identical(other.applicationSupportDir, applicationSupportDir) ||
                other.applicationSupportDir == applicationSupportDir) &&
            (identical(other.applicationBinaryModuleDir,
                    applicationBinaryModuleDir) ||
                other.applicationBinaryModuleDir ==
                    applicationBinaryModuleDir));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, applicationSupportDir, applicationBinaryModuleDir);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      __$$AppGlobalStateImplCopyWithImpl<_$AppGlobalStateImpl>(
          this, _$identity);
}

abstract class _AppGlobalState implements AppGlobalState {
  const factory _AppGlobalState(
      {final String? applicationSupportDir,
      final String? applicationBinaryModuleDir}) = _$AppGlobalStateImpl;

  @override
  String? get applicationSupportDir;
  @override
  String? get applicationBinaryModuleDir;
  @override
  @JsonKey(ignore: true)
  _$$AppGlobalStateImplCopyWith<_$AppGlobalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
