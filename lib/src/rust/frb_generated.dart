// This file is automatically generated, so please do not edit it.
// Generated by `flutter_rust_bridge`@ 2.0.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

import 'api/smtc_flutter.dart';
import 'api/system_theme.dart';
import 'api/tag_reader.dart';
import 'api/utils.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'frb_generated.io.dart'
    if (dart.library.js_interop) 'frb_generated.web.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Main entrypoint of the Rust API
class RustLib extends BaseEntrypoint<RustLibApi, RustLibApiImpl, RustLibWire> {
  @internal
  static final instance = RustLib._();

  RustLib._();

  /// Initialize flutter_rust_bridge
  static Future<void> init({
    RustLibApi? api,
    BaseHandler? handler,
    ExternalLibrary? externalLibrary,
  }) async {
    await instance.initImpl(
      api: api,
      handler: handler,
      externalLibrary: externalLibrary,
    );
  }

  /// Dispose flutter_rust_bridge
  ///
  /// The call to this function is optional, since flutter_rust_bridge (and everything else)
  /// is automatically disposed when the app stops.
  static void dispose() => instance.disposeImpl();

  @override
  ApiImplConstructor<RustLibApiImpl, RustLibWire> get apiImplConstructor =>
      RustLibApiImpl.new;

  @override
  WireConstructor<RustLibWire> get wireConstructor =>
      RustLibWire.fromExternalLibrary;

  @override
  Future<void> executeRustInitializers() async {}

  @override
  ExternalLibraryLoaderConfig get defaultExternalLibraryLoaderConfig =>
      kDefaultExternalLibraryLoaderConfig;

  @override
  String get codegenVersion => '2.0.0';

  @override
  int get rustContentHash => 300065024;

  static const kDefaultExternalLibraryLoaderConfig =
      ExternalLibraryLoaderConfig(
    stem: 'rust_lib',
    ioDirectory: 'rust/target/release/',
    webPrefix: 'pkg/',
  );
}

abstract class RustLibApi extends BaseApi {
  Future<void> crateApiSmtcFlutterSmtcFlutterClose({required SmtcFlutter that});

  SmtcFlutter crateApiSmtcFlutterSmtcFlutterNew();

  Stream<SMTCControlEvent>
      crateApiSmtcFlutterSmtcFlutterSubscribeToControlEvents(
          {required SmtcFlutter that});

  Future<void> crateApiSmtcFlutterSmtcFlutterUpdateDisplay(
      {required SmtcFlutter that,
      required String title,
      required String artist,
      required String album,
      required String path});

  Future<void> crateApiSmtcFlutterSmtcFlutterUpdateState(
      {required SmtcFlutter that, required SMTCState state});

  SystemTheme crateApiSystemThemeSystemThemeGetSystemTheme();

  Stream<SystemTheme> crateApiSystemThemeSystemThemeOnSystemThemeChanged();

  Stream<IndexActionState> crateApiTagReaderBuildIndexFromFolders(
      {required List<String> folders, required String indexPath});

  Stream<IndexActionState> crateApiTagReaderBuildIndexFromFoldersRecursively(
      {required List<String> folders, required String indexPath});

  Future<String?> crateApiTagReaderGetLyricFromPath({required String path});

  Future<Uint8List?> crateApiTagReaderGetPictureFromPath(
      {required String path});

  Stream<IndexActionState> crateApiTagReaderUpdateIndex(
      {required String indexPath});

  Future<bool> crateApiUtilsLaunchInBrowser({required String uri});

  Future<String?> crateApiUtilsPickSingleFolder();

  Future<bool> crateApiUtilsShowInExplorer({required String path});

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_SmtcFlutter;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_SmtcFlutter;

  CrossPlatformFinalizerArg get rust_arc_decrement_strong_count_SmtcFlutterPtr;
}

class RustLibApiImpl extends RustLibApiImplPlatform implements RustLibApi {
  RustLibApiImpl({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  @override
  Future<void> crateApiSmtcFlutterSmtcFlutterClose(
      {required SmtcFlutter that}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
            that, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 1, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSmtcFlutterSmtcFlutterCloseConstMeta,
      argValues: [that],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSmtcFlutterSmtcFlutterCloseConstMeta =>
      const TaskConstMeta(
        debugName: "SmtcFlutter_close",
        argNames: ["that"],
      );

  @override
  SmtcFlutter crateApiSmtcFlutterSmtcFlutterNew() {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 2)!;
      },
      codec: SseCodec(
        decodeSuccessData:
            sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSmtcFlutterSmtcFlutterNewConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSmtcFlutterSmtcFlutterNewConstMeta =>
      const TaskConstMeta(
        debugName: "SmtcFlutter_new",
        argNames: [],
      );

  @override
  Stream<SMTCControlEvent>
      crateApiSmtcFlutterSmtcFlutterSubscribeToControlEvents(
          {required SmtcFlutter that}) {
    final sink = RustStreamSink<SMTCControlEvent>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
            that, serializer);
        sse_encode_StreamSink_smtc_control_event_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 3, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta:
          kCrateApiSmtcFlutterSmtcFlutterSubscribeToControlEventsConstMeta,
      argValues: [that, sink],
      apiImpl: this,
    )));
    return sink.stream;
  }

  TaskConstMeta
      get kCrateApiSmtcFlutterSmtcFlutterSubscribeToControlEventsConstMeta =>
          const TaskConstMeta(
            debugName: "SmtcFlutter_subscribe_to_control_events",
            argNames: ["that", "sink"],
          );

  @override
  Future<void> crateApiSmtcFlutterSmtcFlutterUpdateDisplay(
      {required SmtcFlutter that,
      required String title,
      required String artist,
      required String album,
      required String path}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
            that, serializer);
        sse_encode_String(title, serializer);
        sse_encode_String(artist, serializer);
        sse_encode_String(album, serializer);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 4, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSmtcFlutterSmtcFlutterUpdateDisplayConstMeta,
      argValues: [that, title, artist, album, path],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSmtcFlutterSmtcFlutterUpdateDisplayConstMeta =>
      const TaskConstMeta(
        debugName: "SmtcFlutter_update_display",
        argNames: ["that", "title", "artist", "album", "path"],
      );

  @override
  Future<void> crateApiSmtcFlutterSmtcFlutterUpdateState(
      {required SmtcFlutter that, required SMTCState state}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
            that, serializer);
        sse_encode_smtc_state(state, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 5, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSmtcFlutterSmtcFlutterUpdateStateConstMeta,
      argValues: [that, state],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSmtcFlutterSmtcFlutterUpdateStateConstMeta =>
      const TaskConstMeta(
        debugName: "SmtcFlutter_update_state",
        argNames: ["that", "state"],
      );

  @override
  SystemTheme crateApiSystemThemeSystemThemeGetSystemTheme() {
    return handler.executeSync(SyncTask(
      callFfi: () {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        return pdeCallFfi(generalizedFrbRustBinding, serializer, funcId: 6)!;
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_system_theme,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSystemThemeSystemThemeGetSystemThemeConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiSystemThemeSystemThemeGetSystemThemeConstMeta =>
      const TaskConstMeta(
        debugName: "system_theme_get_system_theme",
        argNames: [],
      );

  @override
  Stream<SystemTheme> crateApiSystemThemeSystemThemeOnSystemThemeChanged() {
    final sink = RustStreamSink<SystemTheme>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_StreamSink_system_theme_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 7, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiSystemThemeSystemThemeOnSystemThemeChangedConstMeta,
      argValues: [sink],
      apiImpl: this,
    )));
    return sink.stream;
  }

  TaskConstMeta
      get kCrateApiSystemThemeSystemThemeOnSystemThemeChangedConstMeta =>
          const TaskConstMeta(
            debugName: "system_theme_on_system_theme_changed",
            argNames: ["sink"],
          );

  @override
  Stream<IndexActionState> crateApiTagReaderBuildIndexFromFolders(
      {required List<String> folders, required String indexPath}) {
    final sink = RustStreamSink<IndexActionState>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_String(folders, serializer);
        sse_encode_String(indexPath, serializer);
        sse_encode_StreamSink_index_action_state_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 8, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiTagReaderBuildIndexFromFoldersConstMeta,
      argValues: [folders, indexPath, sink],
      apiImpl: this,
    )));
    return sink.stream;
  }

  TaskConstMeta get kCrateApiTagReaderBuildIndexFromFoldersConstMeta =>
      const TaskConstMeta(
        debugName: "build_index_from_folders",
        argNames: ["folders", "indexPath", "sink"],
      );

  @override
  Stream<IndexActionState> crateApiTagReaderBuildIndexFromFoldersRecursively(
      {required List<String> folders, required String indexPath}) {
    final sink = RustStreamSink<IndexActionState>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_list_String(folders, serializer);
        sse_encode_String(indexPath, serializer);
        sse_encode_StreamSink_index_action_state_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 9, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiTagReaderBuildIndexFromFoldersRecursivelyConstMeta,
      argValues: [folders, indexPath, sink],
      apiImpl: this,
    )));
    return sink.stream;
  }

  TaskConstMeta
      get kCrateApiTagReaderBuildIndexFromFoldersRecursivelyConstMeta =>
          const TaskConstMeta(
            debugName: "build_index_from_folders_recursively",
            argNames: ["folders", "indexPath", "sink"],
          );

  @override
  Future<String?> crateApiTagReaderGetLyricFromPath({required String path}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 10, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiTagReaderGetLyricFromPathConstMeta,
      argValues: [path],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiTagReaderGetLyricFromPathConstMeta =>
      const TaskConstMeta(
        debugName: "get_lyric_from_path",
        argNames: ["path"],
      );

  @override
  Future<Uint8List?> crateApiTagReaderGetPictureFromPath(
      {required String path}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 11, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_list_prim_u_8_strict,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiTagReaderGetPictureFromPathConstMeta,
      argValues: [path],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiTagReaderGetPictureFromPathConstMeta =>
      const TaskConstMeta(
        debugName: "get_picture_from_path",
        argNames: ["path"],
      );

  @override
  Stream<IndexActionState> crateApiTagReaderUpdateIndex(
      {required String indexPath}) {
    final sink = RustStreamSink<IndexActionState>();
    unawaited(handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(indexPath, serializer);
        sse_encode_StreamSink_index_action_state_Sse(sink, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 12, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_unit,
        decodeErrorData: sse_decode_AnyhowException,
      ),
      constMeta: kCrateApiTagReaderUpdateIndexConstMeta,
      argValues: [indexPath, sink],
      apiImpl: this,
    )));
    return sink.stream;
  }

  TaskConstMeta get kCrateApiTagReaderUpdateIndexConstMeta =>
      const TaskConstMeta(
        debugName: "update_index",
        argNames: ["indexPath", "sink"],
      );

  @override
  Future<bool> crateApiUtilsLaunchInBrowser({required String uri}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(uri, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 13, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_bool,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiUtilsLaunchInBrowserConstMeta,
      argValues: [uri],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiUtilsLaunchInBrowserConstMeta =>
      const TaskConstMeta(
        debugName: "launch_in_browser",
        argNames: ["uri"],
      );

  @override
  Future<String?> crateApiUtilsPickSingleFolder() {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 14, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_opt_String,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiUtilsPickSingleFolderConstMeta,
      argValues: [],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiUtilsPickSingleFolderConstMeta =>
      const TaskConstMeta(
        debugName: "pick_single_folder",
        argNames: [],
      );

  @override
  Future<bool> crateApiUtilsShowInExplorer({required String path}) {
    return handler.executeNormal(NormalTask(
      callFfi: (port_) {
        final serializer = SseSerializer(generalizedFrbRustBinding);
        sse_encode_String(path, serializer);
        pdeCallFfi(generalizedFrbRustBinding, serializer,
            funcId: 15, port: port_);
      },
      codec: SseCodec(
        decodeSuccessData: sse_decode_bool,
        decodeErrorData: null,
      ),
      constMeta: kCrateApiUtilsShowInExplorerConstMeta,
      argValues: [path],
      apiImpl: this,
    ));
  }

  TaskConstMeta get kCrateApiUtilsShowInExplorerConstMeta =>
      const TaskConstMeta(
        debugName: "show_in_explorer",
        argNames: ["path"],
      );

  RustArcIncrementStrongCountFnType
      get rust_arc_increment_strong_count_SmtcFlutter => wire
          .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter;

  RustArcDecrementStrongCountFnType
      get rust_arc_decrement_strong_count_SmtcFlutter => wire
          .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return AnyhowException(raw as String);
  }

  @protected
  SmtcFlutter
      dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  SmtcFlutter
      dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  SmtcFlutter
      dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalDcoDecode(raw as List<dynamic>);
  }

  @protected
  RustStreamSink<IndexActionState> dco_decode_StreamSink_index_action_state_Sse(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError();
  }

  @protected
  RustStreamSink<SMTCControlEvent> dco_decode_StreamSink_smtc_control_event_Sse(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError();
  }

  @protected
  RustStreamSink<SystemTheme> dco_decode_StreamSink_system_theme_Sse(
      dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    throw UnimplementedError();
  }

  @protected
  String dco_decode_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as String;
  }

  @protected
  bool dco_decode_bool(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as bool;
  }

  @protected
  double dco_decode_f_64(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as double;
  }

  @protected
  int dco_decode_i_32(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  IndexActionState dco_decode_index_action_state(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return IndexActionState(
      progress: dco_decode_f_64(arr[0]),
      message: dco_decode_String(arr[1]),
    );
  }

  @protected
  List<String> dco_decode_list_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return (raw as List<dynamic>).map(dco_decode_String).toList();
  }

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as Uint8List;
  }

  @protected
  String? dco_decode_opt_String(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_String(raw);
  }

  @protected
  Uint8List? dco_decode_opt_list_prim_u_8_strict(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw == null ? null : dco_decode_list_prim_u_8_strict(raw);
  }

  @protected
  (int, int, int, int) dco_decode_record_u_8_u_8_u_8_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 4) {
      throw Exception('Expected 4 elements, got ${arr.length}');
    }
    return (
      dco_decode_u_8(arr[0]),
      dco_decode_u_8(arr[1]),
      dco_decode_u_8(arr[2]),
      dco_decode_u_8(arr[3]),
    );
  }

  @protected
  SMTCControlEvent dco_decode_smtc_control_event(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SMTCControlEvent.values[raw as int];
  }

  @protected
  SMTCState dco_decode_smtc_state(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return SMTCState.values[raw as int];
  }

  @protected
  SystemTheme dco_decode_system_theme(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    final arr = raw as List<dynamic>;
    if (arr.length != 2)
      throw Exception('unexpected arr length: expect 2 but see ${arr.length}');
    return SystemTheme(
      fore: dco_decode_record_u_8_u_8_u_8_u_8(arr[0]),
      accent: dco_decode_record_u_8_u_8_u_8_u_8(arr[1]),
    );
  }

  @protected
  int dco_decode_u_8(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return raw as int;
  }

  @protected
  void dco_decode_unit(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return;
  }

  @protected
  BigInt dco_decode_usize(dynamic raw) {
    // Codec=Dco (DartCObject based), see doc to use other codecs
    return dcoDecodeU64(raw);
  }

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_String(deserializer);
    return AnyhowException(inner);
  }

  @protected
  SmtcFlutter
      sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  SmtcFlutter
      sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  SmtcFlutter
      sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return SmtcFlutterImpl.frbInternalSseDecode(
        sse_decode_usize(deserializer), sse_decode_i_32(deserializer));
  }

  @protected
  RustStreamSink<IndexActionState> sse_decode_StreamSink_index_action_state_Sse(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ()');
  }

  @protected
  RustStreamSink<SMTCControlEvent> sse_decode_StreamSink_smtc_control_event_Sse(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ()');
  }

  @protected
  RustStreamSink<SystemTheme> sse_decode_StreamSink_system_theme_Sse(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    throw UnimplementedError('Unreachable ()');
  }

  @protected
  String sse_decode_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_list_prim_u_8_strict(deserializer);
    return utf8.decoder.convert(inner);
  }

  @protected
  bool sse_decode_bool(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8() != 0;
  }

  @protected
  double sse_decode_f_64(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getFloat64();
  }

  @protected
  int sse_decode_i_32(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getInt32();
  }

  @protected
  IndexActionState sse_decode_index_action_state(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_progress = sse_decode_f_64(deserializer);
    var var_message = sse_decode_String(deserializer);
    return IndexActionState(progress: var_progress, message: var_message);
  }

  @protected
  List<String> sse_decode_list_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    var len_ = sse_decode_i_32(deserializer);
    var ans_ = <String>[];
    for (var idx_ = 0; idx_ < len_; ++idx_) {
      ans_.add(sse_decode_String(deserializer));
    }
    return ans_;
  }

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var len_ = sse_decode_i_32(deserializer);
    return deserializer.buffer.getUint8List(len_);
  }

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_String(deserializer));
    } else {
      return null;
    }
  }

  @protected
  Uint8List? sse_decode_opt_list_prim_u_8_strict(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    if (sse_decode_bool(deserializer)) {
      return (sse_decode_list_prim_u_8_strict(deserializer));
    } else {
      return null;
    }
  }

  @protected
  (int, int, int, int) sse_decode_record_u_8_u_8_u_8_u_8(
      SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_field0 = sse_decode_u_8(deserializer);
    var var_field1 = sse_decode_u_8(deserializer);
    var var_field2 = sse_decode_u_8(deserializer);
    var var_field3 = sse_decode_u_8(deserializer);
    return (var_field0, var_field1, var_field2, var_field3);
  }

  @protected
  SMTCControlEvent sse_decode_smtc_control_event(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return SMTCControlEvent.values[inner];
  }

  @protected
  SMTCState sse_decode_smtc_state(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var inner = sse_decode_i_32(deserializer);
    return SMTCState.values[inner];
  }

  @protected
  SystemTheme sse_decode_system_theme(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    var var_fore = sse_decode_record_u_8_u_8_u_8_u_8(deserializer);
    var var_accent = sse_decode_record_u_8_u_8_u_8_u_8(deserializer);
    return SystemTheme(fore: var_fore, accent: var_accent);
  }

  @protected
  int sse_decode_u_8(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getUint8();
  }

  @protected
  void sse_decode_unit(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    return deserializer.buffer.getBigUint64();
  }

  @protected
  void sse_encode_AnyhowException(
      AnyhowException self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(self.message, serializer);
  }

  @protected
  void
      sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as SmtcFlutterImpl).frbInternalSseEncode(move: true), serializer);
  }

  @protected
  void
      sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as SmtcFlutterImpl).frbInternalSseEncode(move: false),
        serializer);
  }

  @protected
  void
      sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSMTCFlutter(
          SmtcFlutter self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_usize(
        (self as SmtcFlutterImpl).frbInternalSseEncode(move: null), serializer);
  }

  @protected
  void sse_encode_StreamSink_index_action_state_Sse(
      RustStreamSink<IndexActionState> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(
        self.setupAndSerialize(
            codec: SseCodec(
          decodeSuccessData: sse_decode_index_action_state,
          decodeErrorData: sse_decode_AnyhowException,
        )),
        serializer);
  }

  @protected
  void sse_encode_StreamSink_smtc_control_event_Sse(
      RustStreamSink<SMTCControlEvent> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(
        self.setupAndSerialize(
            codec: SseCodec(
          decodeSuccessData: sse_decode_smtc_control_event,
          decodeErrorData: sse_decode_AnyhowException,
        )),
        serializer);
  }

  @protected
  void sse_encode_StreamSink_system_theme_Sse(
      RustStreamSink<SystemTheme> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_String(
        self.setupAndSerialize(
            codec: SseCodec(
          decodeSuccessData: sse_decode_system_theme,
          decodeErrorData: sse_decode_AnyhowException,
        )),
        serializer);
  }

  @protected
  void sse_encode_String(String self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_list_prim_u_8_strict(utf8.encoder.convert(self), serializer);
  }

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self ? 1 : 0);
  }

  @protected
  void sse_encode_f_64(double self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putFloat64(self);
  }

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putInt32(self);
  }

  @protected
  void sse_encode_index_action_state(
      IndexActionState self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_f_64(self.progress, serializer);
    sse_encode_String(self.message, serializer);
  }

  @protected
  void sse_encode_list_String(List<String> self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    for (final item in self) {
      sse_encode_String(item, serializer);
    }
  }

  @protected
  void sse_encode_list_prim_u_8_strict(
      Uint8List self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.length, serializer);
    serializer.buffer.putUint8List(self);
  }

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_String(self, serializer);
    }
  }

  @protected
  void sse_encode_opt_list_prim_u_8_strict(
      Uint8List? self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs

    sse_encode_bool(self != null, serializer);
    if (self != null) {
      sse_encode_list_prim_u_8_strict(self, serializer);
    }
  }

  @protected
  void sse_encode_record_u_8_u_8_u_8_u_8(
      (int, int, int, int) self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_u_8(self.$1, serializer);
    sse_encode_u_8(self.$2, serializer);
    sse_encode_u_8(self.$3, serializer);
    sse_encode_u_8(self.$4, serializer);
  }

  @protected
  void sse_encode_smtc_control_event(
      SMTCControlEvent self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_smtc_state(SMTCState self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_i_32(self.index, serializer);
  }

  @protected
  void sse_encode_system_theme(SystemTheme self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    sse_encode_record_u_8_u_8_u_8_u_8(self.fore, serializer);
    sse_encode_record_u_8_u_8_u_8_u_8(self.accent, serializer);
  }

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putUint8(self);
  }

  @protected
  void sse_encode_unit(void self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
  }

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer) {
    // Codec=Sse (Serialization based), see doc to use other codecs
    serializer.buffer.putBigUint64(self);
  }
}

@sealed
class SmtcFlutterImpl extends RustOpaque implements SmtcFlutter {
  // Not to be used by end users
  SmtcFlutterImpl.frbInternalDcoDecode(List<dynamic> wire)
      : super.frbInternalDcoDecode(wire, _kStaticData);

  // Not to be used by end users
  SmtcFlutterImpl.frbInternalSseDecode(BigInt ptr, int externalSizeOnNative)
      : super.frbInternalSseDecode(ptr, externalSizeOnNative, _kStaticData);

  static final _kStaticData = RustArcStaticData(
    rustArcIncrementStrongCount:
        RustLib.instance.api.rust_arc_increment_strong_count_SmtcFlutter,
    rustArcDecrementStrongCount:
        RustLib.instance.api.rust_arc_decrement_strong_count_SmtcFlutter,
    rustArcDecrementStrongCountPtr:
        RustLib.instance.api.rust_arc_decrement_strong_count_SmtcFlutterPtr,
  );

  /// Apis for Flutter
  Future<void> close() =>
      RustLib.instance.api.crateApiSmtcFlutterSmtcFlutterClose(
        that: this,
      );

  /// Apis for Flutter
  Stream<SMTCControlEvent> subscribeToControlEvents() => RustLib.instance.api
          .crateApiSmtcFlutterSmtcFlutterSubscribeToControlEvents(
        that: this,
      );

  /// Apis for Flutter
  Future<void> updateDisplay(
          {required String title,
          required String artist,
          required String album,
          required String path}) =>
      RustLib.instance.api.crateApiSmtcFlutterSmtcFlutterUpdateDisplay(
          that: this, title: title, artist: artist, album: album, path: path);

  /// Apis for Flutter
  Future<void> updateState({required SMTCState state}) => RustLib.instance.api
      .crateApiSmtcFlutterSmtcFlutterUpdateState(that: this, state: state);
}
