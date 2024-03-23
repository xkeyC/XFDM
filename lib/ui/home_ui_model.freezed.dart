// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeUIState {
  List<Aria2Task> get tasks => throw _privateConstructorUsedError;
  List<Aria2Task> get waitingTasks => throw _privateConstructorUsedError;
  List<Aria2Task> get stoppedTasks => throw _privateConstructorUsedError;
  Aria2GlobalStat? get globalStat => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeUIStateCopyWith<HomeUIState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeUIStateCopyWith<$Res> {
  factory $HomeUIStateCopyWith(
          HomeUIState value, $Res Function(HomeUIState) then) =
      _$HomeUIStateCopyWithImpl<$Res, HomeUIState>;
  @useResult
  $Res call(
      {List<Aria2Task> tasks,
      List<Aria2Task> waitingTasks,
      List<Aria2Task> stoppedTasks,
      Aria2GlobalStat? globalStat});
}

/// @nodoc
class _$HomeUIStateCopyWithImpl<$Res, $Val extends HomeUIState>
    implements $HomeUIStateCopyWith<$Res> {
  _$HomeUIStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? waitingTasks = null,
    Object? stoppedTasks = null,
    Object? globalStat = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      waitingTasks: null == waitingTasks
          ? _value.waitingTasks
          : waitingTasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      stoppedTasks: null == stoppedTasks
          ? _value.stoppedTasks
          : stoppedTasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      globalStat: freezed == globalStat
          ? _value.globalStat
          : globalStat // ignore: cast_nullable_to_non_nullable
              as Aria2GlobalStat?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeUIStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Aria2Task> tasks,
      List<Aria2Task> waitingTasks,
      List<Aria2Task> stoppedTasks,
      Aria2GlobalStat? globalStat});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeUIStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? waitingTasks = null,
    Object? stoppedTasks = null,
    Object? globalStat = freezed,
  }) {
    return _then(_$HomeStateImpl(
      tasks: null == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      waitingTasks: null == waitingTasks
          ? _value._waitingTasks
          : waitingTasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      stoppedTasks: null == stoppedTasks
          ? _value._stoppedTasks
          : stoppedTasks // ignore: cast_nullable_to_non_nullable
              as List<Aria2Task>,
      globalStat: freezed == globalStat
          ? _value.globalStat
          : globalStat // ignore: cast_nullable_to_non_nullable
              as Aria2GlobalStat?,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  _$HomeStateImpl(
      {final List<Aria2Task> tasks = const [],
      final List<Aria2Task> waitingTasks = const [],
      final List<Aria2Task> stoppedTasks = const [],
      this.globalStat})
      : _tasks = tasks,
        _waitingTasks = waitingTasks,
        _stoppedTasks = stoppedTasks;

  final List<Aria2Task> _tasks;
  @override
  @JsonKey()
  List<Aria2Task> get tasks {
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tasks);
  }

  final List<Aria2Task> _waitingTasks;
  @override
  @JsonKey()
  List<Aria2Task> get waitingTasks {
    if (_waitingTasks is EqualUnmodifiableListView) return _waitingTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_waitingTasks);
  }

  final List<Aria2Task> _stoppedTasks;
  @override
  @JsonKey()
  List<Aria2Task> get stoppedTasks {
    if (_stoppedTasks is EqualUnmodifiableListView) return _stoppedTasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stoppedTasks);
  }

  @override
  final Aria2GlobalStat? globalStat;

  @override
  String toString() {
    return 'HomeUIState(tasks: $tasks, waitingTasks: $waitingTasks, stoppedTasks: $stoppedTasks, globalStat: $globalStat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks) &&
            const DeepCollectionEquality()
                .equals(other._waitingTasks, _waitingTasks) &&
            const DeepCollectionEquality()
                .equals(other._stoppedTasks, _stoppedTasks) &&
            (identical(other.globalStat, globalStat) ||
                other.globalStat == globalStat));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tasks),
      const DeepCollectionEquality().hash(_waitingTasks),
      const DeepCollectionEquality().hash(_stoppedTasks),
      globalStat);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeUIState {
  factory _HomeState(
      {final List<Aria2Task> tasks,
      final List<Aria2Task> waitingTasks,
      final List<Aria2Task> stoppedTasks,
      final Aria2GlobalStat? globalStat}) = _$HomeStateImpl;

  @override
  List<Aria2Task> get tasks;
  @override
  List<Aria2Task> get waitingTasks;
  @override
  List<Aria2Task> get stoppedTasks;
  @override
  Aria2GlobalStat? get globalStat;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
