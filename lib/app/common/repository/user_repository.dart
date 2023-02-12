import 'package:flutter_base_architecture/app/common/model/user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supercharged/supercharged.dart';
part 'user_repository.g.dart';

@Riverpod(keepAlive: true)
class UserRepository extends _$UserRepository {
  @override
  void build() {
    return;
  }

  Future<AppUser> getCurrent() async {
    await 1.seconds.delay;
    return const AppUser(
      id: '1',
      email: 'appUser@app.com',
      username: 'appUser',
    );
  }
}

class CurrUserNotFoundException implements Exception {
  @override
  String toString() {
    return 'Current user not found';
  }
}

class UnhandledException implements Exception {
  @override
  String toString() {
    return 'Something went wrong, Please try again';
  }
}
