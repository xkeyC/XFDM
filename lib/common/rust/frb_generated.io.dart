// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0-dev.35.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/process_api.dart';
import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'dart:ffi' as ffi;
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_io.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @protected
  RustStreamSink<String> dco_decode_StreamSink_String_Dco(dynamic raw);

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  List<String> dco_decode_list_String(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  RustStreamSink<String> sse_decode_StreamSink_String_Dco(
      SseDeserializer deserializer);

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  ffi.Pointer<wire_cst_list_prim_u_8_strict> cst_encode_StreamSink_String_Dco(
      RustStreamSink<String> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_String(raw.setupAndSerialize(
        codec: DcoCodec(
            decodeSuccessData: dco_decode_String, decodeErrorData: null)));
  }

  @protected
  ffi.Pointer<wire_cst_list_prim_u_8_strict> cst_encode_String(String raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    return cst_encode_list_prim_u_8_strict(utf8.encoder.convert(raw));
  }

  @protected
  ffi.Pointer<wire_cst_list_String> cst_encode_list_String(List<String> raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    final ans = wire.cst_new_list_String(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      ans.ref.ptr[i] = cst_encode_String(raw[i]);
    }
    return ans;
  }

  @protected
  ffi.Pointer<wire_cst_list_prim_u_8_strict> cst_encode_list_prim_u_8_strict(
      Uint8List raw) {
    // Codec=Cst (C-struct based), see doc to use other codecs
    final ans = wire.cst_new_list_prim_u_8_strict(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  @protected
  int cst_encode_u_8(int raw);

  @protected
  void cst_encode_unit(void raw);

  @protected
  void sse_encode_StreamSink_String_Dco(
      RustStreamSink<String> self, SseSerializer serializer);

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer);

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names
// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
// ignore_for_file: type=lint

/// generated by flutter_rust_bridge
class RustLibWire implements BaseWire {
  factory RustLibWire.fromExternalLibrary(ExternalLibrary lib) =>
      RustLibWire(lib.ffiDynamicLibrary);

  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  RustLibWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  RustLibWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();

  void wire__crate__api__process_api__start_process(
    int port_,
    ffi.Pointer<wire_cst_list_prim_u_8_strict> executable,
    ffi.Pointer<wire_cst_list_String> arguments,
    ffi.Pointer<wire_cst_list_prim_u_8_strict> working_directory,
    ffi.Pointer<wire_cst_list_prim_u_8_strict> stream_sink,
  ) {
    return _wire__crate__api__process_api__start_process(
      port_,
      executable,
      arguments,
      working_directory,
      stream_sink,
    );
  }

  late final _wire__crate__api__process_api__start_processPtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(
                  ffi.Int64,
                  ffi.Pointer<wire_cst_list_prim_u_8_strict>,
                  ffi.Pointer<wire_cst_list_String>,
                  ffi.Pointer<wire_cst_list_prim_u_8_strict>,
                  ffi.Pointer<wire_cst_list_prim_u_8_strict>)>>(
      'frbgen_xfdm_wire__crate__api__process_api__start_process');
  late final _wire__crate__api__process_api__start_process =
      _wire__crate__api__process_api__start_processPtr.asFunction<
          void Function(
              int,
              ffi.Pointer<wire_cst_list_prim_u_8_strict>,
              ffi.Pointer<wire_cst_list_String>,
              ffi.Pointer<wire_cst_list_prim_u_8_strict>,
              ffi.Pointer<wire_cst_list_prim_u_8_strict>)>();

  void wire__crate__api__simple__init_app(
    int port_,
  ) {
    return _wire__crate__api__simple__init_app(
      port_,
    );
  }

  late final _wire__crate__api__simple__init_appPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(ffi.Int64)>>(
          'frbgen_xfdm_wire__crate__api__simple__init_app');
  late final _wire__crate__api__simple__init_app =
      _wire__crate__api__simple__init_appPtr.asFunction<void Function(int)>();

  ffi.Pointer<wire_cst_list_String> cst_new_list_String(
    int len,
  ) {
    return _cst_new_list_String(
      len,
    );
  }

  late final _cst_new_list_StringPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_cst_list_String> Function(
              ffi.Int32)>>('frbgen_xfdm_cst_new_list_String');
  late final _cst_new_list_String = _cst_new_list_StringPtr
      .asFunction<ffi.Pointer<wire_cst_list_String> Function(int)>();

  ffi.Pointer<wire_cst_list_prim_u_8_strict> cst_new_list_prim_u_8_strict(
    int len,
  ) {
    return _cst_new_list_prim_u_8_strict(
      len,
    );
  }

  late final _cst_new_list_prim_u_8_strictPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_cst_list_prim_u_8_strict> Function(
              ffi.Int32)>>('frbgen_xfdm_cst_new_list_prim_u_8_strict');
  late final _cst_new_list_prim_u_8_strict = _cst_new_list_prim_u_8_strictPtr
      .asFunction<ffi.Pointer<wire_cst_list_prim_u_8_strict> Function(int)>();

  int dummy_method_to_enforce_bundling() {
    return _dummy_method_to_enforce_bundling();
  }

  late final _dummy_method_to_enforce_bundlingPtr =
      _lookup<ffi.NativeFunction<ffi.Int64 Function()>>(
          'dummy_method_to_enforce_bundling');
  late final _dummy_method_to_enforce_bundling =
      _dummy_method_to_enforce_bundlingPtr.asFunction<int Function()>();
}

typedef DartPostCObjectFnType
    = ffi.Pointer<ffi.NativeFunction<DartPostCObjectFnTypeFunction>>;
typedef DartPostCObjectFnTypeFunction = ffi.Bool Function(
    DartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartDartPostCObjectFnTypeFunction = bool Function(
    DartDartPort port_id, ffi.Pointer<ffi.Void> message);
typedef DartPort = ffi.Int64;
typedef DartDartPort = int;

final class wire_cst_list_prim_u_8_strict extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

final class wire_cst_list_String extends ffi.Struct {
  external ffi.Pointer<ffi.Pointer<wire_cst_list_prim_u_8_strict>> ptr;

  @ffi.Int32()
  external int len;
}
