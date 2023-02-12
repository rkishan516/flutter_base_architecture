import 'dart:async';
import 'package:flutter_base_architecture/app/common/model/user.dart';
import 'package:flutter_base_architecture/app/common/notifiers/logger.dart';
import 'package:flutter_base_architecture/app/common/repository/auth_repository.dart';
import 'package:flutter_base_architecture/app/common/repository/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'curr_user_notifier.g.dart';

@riverpod
class CurrentUserNotifier extends _$CurrentUserNotifier {
  @override
  AppUser? build() {
    return null;
  }

  Future<AppUser?> load() async {
    try {
      final user = ref.read(authRepositoryProvider);
      if (user == null) {
        return null;
      }

      state = await ref.read(userRepositoryProvider.notifier).getCurrent();

      return state;
    } on CurrUserNotFoundException catch (_) {
      state = null;
    } on UnhandledException catch (_) {
      state = null;
    } catch (e, s) {
      logger.d('Failed to load user: $e with stack: $s');
    }

    return state;
  }
}
