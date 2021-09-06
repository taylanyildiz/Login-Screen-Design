import 'package:chat_app/constants/constants.dart';
import 'base_repostory.dart';

class AuthRepostory {
  AuthRepostory._();

  static AuthRepostory? _authRepostory;
  static BaseRepoStory _baseRepoStory = BaseRepoStory();

  static getInstance() {
    if (_authRepostory == null) {
      _authRepostory = AuthRepostory._();
    }
    return _authRepostory;
  }

  /// Send Sms for register
  static Future sendRegisterSms(String phoneNumber) async {
    final body = {'phone': phoneNumber};
    final response = await _baseRepoStory.requestPostData(
      RestfulConstant.SEND_REGISTER_SMS_URL,
      body,
    );
    if (response.statusCode == 200) {
      //
    } else {
      //
    }
  }

  /// Register
  static Future reigster(name, phone, smsCode) async {
    final body = {'name': name, 'phone': phone, 'smsCode': smsCode};
    final response = await _baseRepoStory.requestPostData(
      RestfulConstant.REGISTER_URL,
      body,
    );

    if (response.statusCode == 200) {
      //
    } else {
      //
    }
  }
}
