// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_routes.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

String _$RouterNotifierHash() => r'7e696cb138981707c7b423bee1f7e0913e9200d6';

/// See also [RouterNotifier].
final routerNotifierProvider =
    AutoDisposeNotifierProvider<RouterNotifier, void>(
  RouterNotifier.new,
  name: r'routerNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$RouterNotifierHash,
);
typedef RouterNotifierRef = AutoDisposeNotifierProviderRef<void>;

abstract class _$RouterNotifier extends AutoDisposeNotifier<void> {
  @override
  void build();
}

String _$appRouterHash() => r'8493dbf66b52a23dee7f6aec91b6cb9788f200c4';

/// See also [appRouter].
final appRouterProvider = AutoDisposeProvider<GoRouter>(
  appRouter,
  name: r'appRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$appRouterHash,
);
typedef AppRouterRef = AutoDisposeProviderRef<GoRouter>;
