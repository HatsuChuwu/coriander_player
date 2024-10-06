// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.4.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

// These functions are ignored because they are not marked as `pub`: `_get_installed_fonts`, `_read_fonts_in_folder`

Future<List<InstalledFont>?> getInstalledFonts() =>
    RustLib.instance.api.crateApiInstalledFontGetInstalledFonts();

class InstalledFont {
  final String path;
  final String fullName;

  const InstalledFont({
    required this.path,
    required this.fullName,
  });

  @override
  int get hashCode => path.hashCode ^ fullName.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InstalledFont &&
          runtimeType == other.runtimeType &&
          path == other.path &&
          fullName == other.fullName;
}
