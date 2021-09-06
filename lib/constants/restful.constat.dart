class RestfulConstant {
  RestfulConstant._();

  // base
  static const String SERVER_URL = 'http://213.238.180.11';
  static const String PORT = '3050';
  static const String API_VERSION = '/api/v1';
  static const String BASE_URL = '$SERVER_URL:$PORT$API_VERSION';

  // authentication route
  static const String AUTH_ROUTE = '/auth';

  // register
  static const String SEND_REGISTER_SMS_URL = '/send-register-sms';
  static const String REGISTER_URL = '/register';

  // login
  static const String SEND_LOGIN_SMS_URL = '/send-login-sms';
  static const String LOGIN_URL = '/login';
}
