import 'package:flutter_base_architecture/app/common/model/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_data.freezed.dart';

@freezed
class LoginData with _$LoginData {
  factory LoginData({
    AppUser? currUser,
  }) = _LoginData;
}
