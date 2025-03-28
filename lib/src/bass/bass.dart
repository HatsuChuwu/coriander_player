// Generated by `package:ffigen`.
// ignore_for_file: type=lint, unused_field, unused_element
import 'dart:ffi' as ffi;

const int BASS_ERROR_UNKNOWN = -1;

const int BASS_ERROR_NOTAUDIO = 17;

const int BASS_ERROR_NOTFILE = 27;

const int BASS_ERROR_START = 9;

const int BASS_SAMPLE_FLOAT = 256;

const int BASS_ERROR_POSITION = 7;

const int BASS_ERROR_NOPLAY = 24;

const int BASS_ERROR_DECODE = 38;

const int BASS_ERROR_ILLTYPE = 19;

const int BASS_ERROR_REINIT = 11;

const int BASS_STREAM_DECODE = 2097152;

const int BASS_ERROR_HANDLE = 5;

const int BASS_ERROR_NO3D = 21;

const int BASS_ERROR_SPEAKER = 42;

const int BASS_ASYNCFILE = 1073741824;

const int BASS_ERROR_CODEC = 44;

const int BASS_ERROR_INIT = 8;

const int FALSE = 0;

const int TRUE = 1;

const int BASS_ERROR_VERSION = 43;

const int BASS_ERROR_FILEFORM = 41;

const int BASS_ERROR_FILEOPEN = 2;

const int BASS_UNICODE = 2147483648;

const int BASS_POS_BYTE = 0;

const int BASS_ACTIVE_STOPPED = 0;

const int BASS_ACTIVE_PLAYING = 1;

const int BASS_ACTIVE_PAUSED = 3;

const int BASS_ACTIVE_PAUSED_DEVICE = 4;

const int BASS_ACTIVE_STALLED = 2;

const int BASS_ATTRIB_VOLDSP = 19;

const int BASS_DEVICE_REINIT = 128;

const int BASS_ERROR_DEVICE = 23;

const int BASS_ERROR_NOTAVAIL = 37;

const int BASS_ERROR_ALREADY = 14;

const int BASS_ERROR_ILLPARAM = 20;

const int BASS_ERROR_DRIVER = 3;

const int BASS_ERROR_BUSY = 46;

const int BASS_ERROR_FORMAT = 6;

const int BASS_ERROR_MEM = 1;

typedef DWORD = ffi.UnsignedLong;
typedef QWORD = ffi.UnsignedLongLong;

typedef BOOL = ffi.Int;

typedef HPLUGIN = DWORD;
typedef HSAMPLE = DWORD;
typedef HSTREAM = DWORD;

final class HWND__ extends ffi.Struct {
  @ffi.Int()
  external int unused;
}

typedef HWND = ffi.Pointer<HWND__>;

class Bass {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  Bass(ffi.DynamicLibrary dynamicLibrary) : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  Bass.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  int BASS_Start() {
    return _BASS_Start();
  }

  late final _BASS_StartPtr =
      _lookup<ffi.NativeFunction<BOOL Function()>>('BASS_Start');
  late final _BASS_Start = _BASS_StartPtr.asFunction<int Function()>();

  int BASS_Free() {
    return _BASS_Free();
  }

  late final _BASS_FreePtr =
      _lookup<ffi.NativeFunction<BOOL Function()>>('BASS_Free');
  late final _BASS_Free = _BASS_FreePtr.asFunction<int Function()>();

  int BASS_PluginFree(
    int handle,
  ) {
    return _BASS_PluginFree(
      handle,
    );
  }

  late final _BASS_PluginFreePtr =
      _lookup<ffi.NativeFunction<BOOL Function(HPLUGIN)>>('BASS_PluginFree');
  late final _BASS_PluginFree =
      _BASS_PluginFreePtr.asFunction<int Function(int)>();

  int BASS_StreamFree(
    int handle,
  ) {
    return _BASS_StreamFree(
      handle,
    );
  }

  late final _BASS_StreamFreePtr =
      _lookup<ffi.NativeFunction<BOOL Function(HSTREAM)>>('BASS_StreamFree');
  late final _BASS_StreamFree =
      _BASS_StreamFreePtr.asFunction<int Function(int)>();

  int BASS_ChannelSeconds2Bytes(
    int handle,
    double pos,
  ) {
    return _BASS_ChannelSeconds2Bytes(
      handle,
      pos,
    );
  }

  late final _BASS_ChannelSeconds2BytesPtr =
      _lookup<ffi.NativeFunction<QWORD Function(DWORD, ffi.Double)>>(
          'BASS_ChannelSeconds2Bytes');
  late final _BASS_ChannelSeconds2Bytes =
      _BASS_ChannelSeconds2BytesPtr.asFunction<int Function(int, double)>();

  int BASS_ChannelSetPosition(
    int handle,
    int pos,
    int mode,
  ) {
    return _BASS_ChannelSetPosition(
      handle,
      pos,
      mode,
    );
  }

  late final _BASS_ChannelSetPositionPtr =
      _lookup<ffi.NativeFunction<BOOL Function(DWORD, QWORD, DWORD)>>(
          'BASS_ChannelSetPosition');
  late final _BASS_ChannelSetPosition =
      _BASS_ChannelSetPositionPtr.asFunction<int Function(int, int, int)>();

  int BASS_ChannelStop(
    int handle,
  ) {
    return _BASS_ChannelStop(
      handle,
    );
  }

  late final _BASS_ChannelStopPtr =
      _lookup<ffi.NativeFunction<BOOL Function(DWORD)>>('BASS_ChannelStop');
  late final _BASS_ChannelStop =
      _BASS_ChannelStopPtr.asFunction<int Function(int)>();

  int BASS_ChannelPause(
    int handle,
  ) {
    return _BASS_ChannelPause(
      handle,
    );
  }

  late final _BASS_ChannelPausePtr =
      _lookup<ffi.NativeFunction<BOOL Function(DWORD)>>('BASS_ChannelPause');
  late final _BASS_ChannelPause =
      _BASS_ChannelPausePtr.asFunction<int Function(int)>();

  int BASS_ChannelStart(
    int handle,
  ) {
    return _BASS_ChannelStart(
      handle,
    );
  }

  late final _BASS_ChannelStartPtr =
      _lookup<ffi.NativeFunction<BOOL Function(DWORD)>>('BASS_ChannelStart');
  late final _BASS_ChannelStart =
      _BASS_ChannelStartPtr.asFunction<int Function(int)>();

  int BASS_ChannelSetAttribute(
    int handle,
    int attrib,
    double value,
  ) {
    return _BASS_ChannelSetAttribute(
      handle,
      attrib,
      value,
    );
  }

  late final _BASS_ChannelSetAttributePtr =
      _lookup<ffi.NativeFunction<BOOL Function(DWORD, DWORD, ffi.Float)>>(
          'BASS_ChannelSetAttribute');
  late final _BASS_ChannelSetAttribute =
      _BASS_ChannelSetAttributePtr.asFunction<int Function(int, int, double)>();

  int BASS_StreamCreateFile(
    int mem,
    ffi.Pointer<ffi.Void> file,
    int offset,
    int length,
    int flags,
  ) {
    return _BASS_StreamCreateFile(
      mem,
      file,
      offset,
      length,
      flags,
    );
  }

  late final _BASS_StreamCreateFilePtr = _lookup<
      ffi.NativeFunction<
          HSTREAM Function(BOOL, ffi.Pointer<ffi.Void>, QWORD, QWORD,
              DWORD)>>('BASS_StreamCreateFile');
  late final _BASS_StreamCreateFile = _BASS_StreamCreateFilePtr.asFunction<
      int Function(int, ffi.Pointer<ffi.Void>, int, int, int)>();

  int BASS_PluginLoad(
    ffi.Pointer<ffi.Char> file,
    int flags,
  ) {
    return _BASS_PluginLoad(
      file,
      flags,
    );
  }

  late final _BASS_PluginLoadPtr = _lookup<
          ffi.NativeFunction<HPLUGIN Function(ffi.Pointer<ffi.Char>, DWORD)>>(
      'BASS_PluginLoad');
  late final _BASS_PluginLoad = _BASS_PluginLoadPtr.asFunction<
      int Function(ffi.Pointer<ffi.Char>, int)>();

  int BASS_ErrorGetCode() {
    return _BASS_ErrorGetCode();
  }

  late final _BASS_ErrorGetCodePtr =
      _lookup<ffi.NativeFunction<ffi.Int Function()>>('BASS_ErrorGetCode');
  late final _BASS_ErrorGetCode =
      _BASS_ErrorGetCodePtr.asFunction<int Function()>();

  int BASS_Init(
    int device,
    int freq,
    int flags,
    HWND win,
    ffi.Pointer<ffi.Void> dsguid,
  ) {
    return _BASS_Init(
      device,
      freq,
      flags,
      win,
      dsguid,
    );
  }

  late final _BASS_InitPtr = _lookup<
      ffi.NativeFunction<
          BOOL Function(ffi.Int, DWORD, DWORD, HWND,
              ffi.Pointer<ffi.Void>)>>('BASS_Init');
  late final _BASS_Init = _BASS_InitPtr.asFunction<
      int Function(int, int, int, HWND, ffi.Pointer<ffi.Void>)>();

  int BASS_ChannelGetAttribute(
    int handle,
    int attrib,
    ffi.Pointer<ffi.Float> value,
  ) {
    return _BASS_ChannelGetAttribute(
      handle,
      attrib,
      value,
    );
  }

  late final _BASS_ChannelGetAttributePtr = _lookup<
          ffi
          .NativeFunction<BOOL Function(DWORD, DWORD, ffi.Pointer<ffi.Float>)>>(
      'BASS_ChannelGetAttribute');
  late final _BASS_ChannelGetAttribute = _BASS_ChannelGetAttributePtr
      .asFunction<int Function(int, int, ffi.Pointer<ffi.Float>)>();

  int BASS_ChannelIsActive(
    int handle,
  ) {
    return _BASS_ChannelIsActive(
      handle,
    );
  }

  late final _BASS_ChannelIsActivePtr =
      _lookup<ffi.NativeFunction<DWORD Function(DWORD)>>(
          'BASS_ChannelIsActive');
  late final _BASS_ChannelIsActive =
      _BASS_ChannelIsActivePtr.asFunction<int Function(int)>();

  int BASS_ChannelGetPosition(
    int handle,
    int mode,
  ) {
    return _BASS_ChannelGetPosition(
      handle,
      mode,
    );
  }

  late final _BASS_ChannelGetPositionPtr =
      _lookup<ffi.NativeFunction<QWORD Function(DWORD, DWORD)>>(
          'BASS_ChannelGetPosition');
  late final _BASS_ChannelGetPosition =
      _BASS_ChannelGetPositionPtr.asFunction<int Function(int, int)>();

  int BASS_ChannelGetLength(
    int handle,
    int mode,
  ) {
    return _BASS_ChannelGetLength(
      handle,
      mode,
    );
  }

  late final _BASS_ChannelGetLengthPtr =
      _lookup<ffi.NativeFunction<QWORD Function(DWORD, DWORD)>>(
          'BASS_ChannelGetLength');
  late final _BASS_ChannelGetLength =
      _BASS_ChannelGetLengthPtr.asFunction<int Function(int, int)>();

  double BASS_ChannelBytes2Seconds(
    int handle,
    int pos,
  ) {
    return _BASS_ChannelBytes2Seconds(
      handle,
      pos,
    );
  }

  late final _BASS_ChannelBytes2SecondsPtr =
      _lookup<ffi.NativeFunction<ffi.Double Function(DWORD, QWORD)>>(
          'BASS_ChannelBytes2Seconds');
  late final _BASS_ChannelBytes2Seconds =
      _BASS_ChannelBytes2SecondsPtr.asFunction<double Function(int, int)>();
}
