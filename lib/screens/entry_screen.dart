import '/gen/assets.gen.dart';
import '/screens/screens.dart';
import '/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EntryScreen extends StatelessWidget {
  EntryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildAppLogo(),
                SizedBox(height: 40.0),
                _buildLoginBackground(),
                SizedBox(height: 40.0),
                _buildSendMessageAgain(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSendMessageAgain() {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.all(4.0),
        child: Text(
          'Doğrulama Kodu Gelmedi mi?',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildLoginBackground() {
    return LoginBackground(
      elevation: 5.0,
      decorationPadding: 30.0,
      onPress: () {},
      child: PageView(
        children: [
          AccountInfoInput(),
          ActivationCodeInput(),
        ],
      ),
    );
  }

  Row _buildAppLogo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.icons.appIcon.svg(width: 100.0),
        Padding(
          padding: EdgeInsets.only(
            left: 20.0,
            bottom: 20.0,
          ),
          child: Text(
            'UP',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
