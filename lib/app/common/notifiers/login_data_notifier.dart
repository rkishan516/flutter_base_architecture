import 'package:flutter_base_architecture/app/common/model/user.dart';
import 'package:flutter_base_architecture/app/common/notifiers/curr_user_notifier.dart';
import 'package:flutter_base_architecture/app/common/notifiers/logger.dart';
import 'package:flutter_base_architecture/app/common/notifiers/login_data.dart';
import 'package:flutter_base_architecture/app/common/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tilt_extensions/tilt_extensions.dart';

part 'login_data_notifier.g.dart';

@riverpod
class LoginDataNotifier extends _$LoginDataNotifier {
  Future<void> refresh() async {
    AppUser? currUser;
    try {
      currUser = await ref.read(currentUserNotifierProvider.notifier).load();
    } catch (e, s) {
      logger.d('Failed to load user: $e with stack: $s');
    }
    if (currUser == null) {
      state = LoginData();

      return;
    }

    state = LoginData(currUser: currUser);
  }

  void signOut() {
    state = LoginData();
  }

  @override
  LoginData? build() {
    ref.listen(authRepositoryProvider, (previous, next) {
      if (next?.id != previous?.id) {
        refresh();
      }
    });
    refresh.addAsPostFrameCallback();

    return null;
  }
}
