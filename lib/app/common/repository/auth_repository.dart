import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_repository.g.dart';

@Riverpod(keepAlive: true)
class AuthRepository extends _$AuthRepository {
  @override
  FirebaseOrAppWriteUser? build() {
    return null;
  }

  void login() {
    state = FirebaseOrAppWriteUser(
      id: '1',
      email: '',
    );
  }
}

class FirebaseOrAppWriteUser {
  final String id;
  final String email;

  FirebaseOrAppWriteUser({
    required this.id,
    required this.email,
  });
}
