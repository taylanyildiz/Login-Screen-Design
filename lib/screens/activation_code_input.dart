import 'package:chat_app/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ActivationCodeInput extends StatelessWidget {
  ActivationCodeInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              top: 20.0,
              bottom: 20.0,
            ),
            child: Text(
              'SMS Code',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SmsCodeInput(
            formKey: GlobalKey(),
            code: (code) {},
            focusNode: FocusNode(),
          ),
        ],
      ),
    );
  }
}
