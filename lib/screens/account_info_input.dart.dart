import '/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountInfoInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildLogin,
        Padding(
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildName,
              _buildPhone,
            ],
          ),
        )
      ],
    );
  }

  Widget get _buildLogin => Padding(
        padding: EdgeInsets.only(
          left: 20.0,
          top: 20.0,
          bottom: 20.0,
        ),
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      );

  Widget get _buildName => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 10.0),
            child: Text(
              'Name',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomTextField(
            prefixIcon: Icon(Icons.person, color: Colors.black),
          ),
        ],
      );

  Widget get _buildPhone => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10.0, bottom: 10.0, top: 30.0),
            child: Text(
              'Phone',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          CustomTextField(
            textInputType: TextInputType.phone,
            prefixIcon: Icon(Icons.phone, color: Colors.black),
          ),
        ],
      );
}
