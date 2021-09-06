import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketService {
  SocketService._();

  static SocketService? _socketService;
  static late IO.Socket _socket;

  static getInstance(header) {
    if (_socketService == null) {
      _socketService = SocketService._();
      _socket = IO.io(
          'http://localhost:3000',
          IO.OptionBuilder()
              .setTransports(['websocket']) // for Flutter or Dart VM
              .disableAutoConnect() // disable auto-connection
              .setExtraHeaders({'x-access-token': header}) // optional
              .build());
    }
    return _socketService;
  }

  static void connectSocket() {
    _socket.connect();
    _socket.onConnect(_onConnect);
  }

  // listen socket
  static _onConnect(data) {}
}
