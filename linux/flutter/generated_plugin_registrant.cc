//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <audioplayers_linux/audioplayers_linux_plugin.h>
#include <flutter_avif_linux/flutter_avif_linux_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) audioplayers_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "AudioplayersLinuxPlugin");
  audioplayers_linux_plugin_register_with_registrar(audioplayers_linux_registrar);
  g_autoptr(FlPluginRegistrar) flutter_avif_linux_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FlutterAvifLinuxPlugin");
  flutter_avif_linux_plugin_register_with_registrar(flutter_avif_linux_registrar);
}
