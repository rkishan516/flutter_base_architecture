// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_repository.dart';

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

String _$AuthRepositoryHash() => r'5904164fc1471a74d11f8d30604f4d1c0521cff2';

/// See also [AuthRepository].
final authRepositoryProvider =
    AutoDisposeNotifierProvider<AuthRepository, FirebaseOrAppWriteUser?>(
  AuthRepository.new,
  name: r'authRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$AuthRepositoryHash,
);
typedef AuthRepositoryRef
    = AutoDisposeNotifierProviderRef<FirebaseOrAppWriteUser?>;

abstract class _$AuthRepository
    extends AutoDisposeNotifier<FirebaseOrAppWriteUser?> {
  @override
  FirebaseOrAppWriteUser? build();
}
