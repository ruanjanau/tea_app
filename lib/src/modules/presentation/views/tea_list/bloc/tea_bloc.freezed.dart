// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tea_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TeaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaEventFindAll value) findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaEventFindAll value)? findAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaEventFindAll value)? findAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeaEventCopyWith<$Res> {
  factory $TeaEventCopyWith(TeaEvent value, $Res Function(TeaEvent) then) =
      _$TeaEventCopyWithImpl<$Res, TeaEvent>;
}

/// @nodoc
class _$TeaEventCopyWithImpl<$Res, $Val extends TeaEvent>
    implements $TeaEventCopyWith<$Res> {
  _$TeaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TeaEventFindAllImplCopyWith<$Res> {
  factory _$$TeaEventFindAllImplCopyWith(_$TeaEventFindAllImpl value,
          $Res Function(_$TeaEventFindAllImpl) then) =
      __$$TeaEventFindAllImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TeaEventFindAllImplCopyWithImpl<$Res>
    extends _$TeaEventCopyWithImpl<$Res, _$TeaEventFindAllImpl>
    implements _$$TeaEventFindAllImplCopyWith<$Res> {
  __$$TeaEventFindAllImplCopyWithImpl(
      _$TeaEventFindAllImpl _value, $Res Function(_$TeaEventFindAllImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TeaEventFindAllImpl implements _TeaEventFindAll {
  _$TeaEventFindAllImpl();

  @override
  String toString() {
    return 'TeaEvent.findAll()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TeaEventFindAllImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() findAll,
  }) {
    return findAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? findAll,
  }) {
    return findAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? findAll,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaEventFindAll value) findAll,
  }) {
    return findAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaEventFindAll value)? findAll,
  }) {
    return findAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaEventFindAll value)? findAll,
    required TResult orElse(),
  }) {
    if (findAll != null) {
      return findAll(this);
    }
    return orElse();
  }
}

abstract class _TeaEventFindAll implements TeaEvent {
  factory _TeaEventFindAll() = _$TeaEventFindAllImpl;
}

/// @nodoc
mixin _$TeaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TeaStateCopyWith<$Res> {
  factory $TeaStateCopyWith(TeaState value, $Res Function(TeaState) then) =
      _$TeaStateCopyWithImpl<$Res, TeaState>;
}

/// @nodoc
class _$TeaStateCopyWithImpl<$Res, $Val extends TeaState>
    implements $TeaStateCopyWith<$Res> {
  _$TeaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$TeaStateInitialImplCopyWith<$Res> {
  factory _$$TeaStateInitialImplCopyWith(_$TeaStateInitialImpl value,
          $Res Function(_$TeaStateInitialImpl) then) =
      __$$TeaStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TeaStateInitialImplCopyWithImpl<$Res>
    extends _$TeaStateCopyWithImpl<$Res, _$TeaStateInitialImpl>
    implements _$$TeaStateInitialImplCopyWith<$Res> {
  __$$TeaStateInitialImplCopyWithImpl(
      _$TeaStateInitialImpl _value, $Res Function(_$TeaStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TeaStateInitialImpl implements _TeaStateInitial {
  _$TeaStateInitialImpl();

  @override
  String toString() {
    return 'TeaState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TeaStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _TeaStateInitial implements TeaState {
  factory _TeaStateInitial() = _$TeaStateInitialImpl;
}

/// @nodoc
abstract class _$$TeaStateLoadingImplCopyWith<$Res> {
  factory _$$TeaStateLoadingImplCopyWith(_$TeaStateLoadingImpl value,
          $Res Function(_$TeaStateLoadingImpl) then) =
      __$$TeaStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TeaStateLoadingImplCopyWithImpl<$Res>
    extends _$TeaStateCopyWithImpl<$Res, _$TeaStateLoadingImpl>
    implements _$$TeaStateLoadingImplCopyWith<$Res> {
  __$$TeaStateLoadingImplCopyWithImpl(
      _$TeaStateLoadingImpl _value, $Res Function(_$TeaStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TeaStateLoadingImpl implements _TeaStateLoading {
  _$TeaStateLoadingImpl();

  @override
  String toString() {
    return 'TeaState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TeaStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _TeaStateLoading implements TeaState {
  factory _TeaStateLoading() = _$TeaStateLoadingImpl;
}

/// @nodoc
abstract class _$$TeaStateDataImplCopyWith<$Res> {
  factory _$$TeaStateDataImplCopyWith(
          _$TeaStateDataImpl value, $Res Function(_$TeaStateDataImpl) then) =
      __$$TeaStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<TeaModel> products});
}

/// @nodoc
class __$$TeaStateDataImplCopyWithImpl<$Res>
    extends _$TeaStateCopyWithImpl<$Res, _$TeaStateDataImpl>
    implements _$$TeaStateDataImplCopyWith<$Res> {
  __$$TeaStateDataImplCopyWithImpl(
      _$TeaStateDataImpl _value, $Res Function(_$TeaStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = null,
  }) {
    return _then(_$TeaStateDataImpl(
      products: null == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<TeaModel>,
    ));
  }
}

/// @nodoc

class _$TeaStateDataImpl implements _TeaStateData {
  _$TeaStateDataImpl({required final List<TeaModel> products})
      : _products = products;

  final List<TeaModel> _products;
  @override
  List<TeaModel> get products {
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'TeaState.data(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeaStateDataImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeaStateDataImplCopyWith<_$TeaStateDataImpl> get copyWith =>
      __$$TeaStateDataImplCopyWithImpl<_$TeaStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) {
    return data(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) {
    return data?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _TeaStateData implements TeaState {
  factory _TeaStateData({required final List<TeaModel> products}) =
      _$TeaStateDataImpl;

  List<TeaModel> get products;
  @JsonKey(ignore: true)
  _$$TeaStateDataImplCopyWith<_$TeaStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TeaStateErrorImplCopyWith<$Res> {
  factory _$$TeaStateErrorImplCopyWith(
          _$TeaStateErrorImpl value, $Res Function(_$TeaStateErrorImpl) then) =
      __$$TeaStateErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TeaStateErrorImplCopyWithImpl<$Res>
    extends _$TeaStateCopyWithImpl<$Res, _$TeaStateErrorImpl>
    implements _$$TeaStateErrorImplCopyWith<$Res> {
  __$$TeaStateErrorImplCopyWithImpl(
      _$TeaStateErrorImpl _value, $Res Function(_$TeaStateErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TeaStateErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeaStateErrorImpl implements _TeaStateError {
  _$TeaStateErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TeaState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeaStateErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeaStateErrorImplCopyWith<_$TeaStateErrorImpl> get copyWith =>
      __$$TeaStateErrorImplCopyWithImpl<_$TeaStateErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _TeaStateError implements TeaState {
  factory _TeaStateError({required final String message}) = _$TeaStateErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TeaStateErrorImplCopyWith<_$TeaStateErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TeaStateSuccessImplCopyWith<$Res> {
  factory _$$TeaStateSuccessImplCopyWith(_$TeaStateSuccessImpl value,
          $Res Function(_$TeaStateSuccessImpl) then) =
      __$$TeaStateSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TeaStateSuccessImplCopyWithImpl<$Res>
    extends _$TeaStateCopyWithImpl<$Res, _$TeaStateSuccessImpl>
    implements _$$TeaStateSuccessImplCopyWith<$Res> {
  __$$TeaStateSuccessImplCopyWithImpl(
      _$TeaStateSuccessImpl _value, $Res Function(_$TeaStateSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TeaStateSuccessImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TeaStateSuccessImpl implements _TeaStateSuccess {
  _$TeaStateSuccessImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'TeaState.success(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TeaStateSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TeaStateSuccessImplCopyWith<_$TeaStateSuccessImpl> get copyWith =>
      __$$TeaStateSuccessImplCopyWithImpl<_$TeaStateSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<TeaModel> products) data,
    required TResult Function(String message) error,
    required TResult Function(String message) success,
  }) {
    return success(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<TeaModel> products)? data,
    TResult? Function(String message)? error,
    TResult? Function(String message)? success,
  }) {
    return success?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<TeaModel> products)? data,
    TResult Function(String message)? error,
    TResult Function(String message)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TeaStateInitial value) initial,
    required TResult Function(_TeaStateLoading value) loading,
    required TResult Function(_TeaStateData value) data,
    required TResult Function(_TeaStateError value) error,
    required TResult Function(_TeaStateSuccess value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_TeaStateInitial value)? initial,
    TResult? Function(_TeaStateLoading value)? loading,
    TResult? Function(_TeaStateData value)? data,
    TResult? Function(_TeaStateError value)? error,
    TResult? Function(_TeaStateSuccess value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TeaStateInitial value)? initial,
    TResult Function(_TeaStateLoading value)? loading,
    TResult Function(_TeaStateData value)? data,
    TResult Function(_TeaStateError value)? error,
    TResult Function(_TeaStateSuccess value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _TeaStateSuccess implements TeaState {
  factory _TeaStateSuccess({required final String message}) =
      _$TeaStateSuccessImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$TeaStateSuccessImplCopyWith<_$TeaStateSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
