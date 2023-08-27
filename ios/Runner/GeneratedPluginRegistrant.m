//
//  Generated file. Do not edit.
//

// clang-format off

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_pdfview/FLTPDFViewFlutterPlugin.h>)
#import <flutter_pdfview/FLTPDFViewFlutterPlugin.h>
#else
@import flutter_pdfview;
#endif

#if __has_include(<path_provider_foundation/PathProviderPlugin.h>)
#import <path_provider_foundation/PathProviderPlugin.h>
#else
@import path_provider_foundation;
#endif

#if __has_include(<permission_handler_apple/PermissionHandlerPlugin.h>)
#import <permission_handler_apple/PermissionHandlerPlugin.h>
#else
@import permission_handler_apple;
#endif

#if __has_include(<video_player_avfoundation/FLTVideoPlayerPlugin.h>)
#import <video_player_avfoundation/FLTVideoPlayerPlugin.h>
#else
@import video_player_avfoundation;
#endif

#if __has_include(<webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>)
#import <webview_flutter_wkwebview/FLTWebViewFlutterPlugin.h>
#else
@import webview_flutter_wkwebview;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FLTPDFViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPDFViewFlutterPlugin"]];
  [PathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"PathProviderPlugin"]];
  [PermissionHandlerPlugin registerWithRegistrar:[registry registrarForPlugin:@"PermissionHandlerPlugin"]];
  [FLTVideoPlayerPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTVideoPlayerPlugin"]];
  [FLTWebViewFlutterPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTWebViewFlutterPlugin"]];
}

@end
