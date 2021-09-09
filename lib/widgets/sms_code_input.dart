import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SmsCodeInput extends StatefulWidget {
  SmsCodeInput({
    Key? key,
    required this.code,
    required this.formKey,
    this.state = 4,
    this.initialColor,
    this.animateColor,
    this.focusNode,
    this.height,
    this.padding,
  }) : super(key: key);
  final Color? initialColor;
  final Color? animateColor;
  final int state;
  final FocusNode? focusNode;
  final double? padding;
  final double? height;
  final Function(String? code) code;
  final GlobalKey formKey;
  @override
  _SmsCodeInputState createState() => _SmsCodeInputState();
}

class _SmsCodeInputState extends State<SmsCodeInput> {
  final List<FocusNode> focusNodes = [];
  final List<TextEditingController> textControllers = [];
  Timer? timer;
  late List<String> _code;
  @override
  void initState() {
    for (var i = 0; i < widget.state; i++) {
      focusNodes.add(FocusNode());
      textControllers.add(TextEditingController()
        ..addListener(() {
          setState(() {});
        }));
    }
    _code = List.generate(widget.state, (index) => '');
    if (widget.focusNode != null) {
      focusNodes[0] = widget.focusNode!;
    }
    super.initState();
  }

  void onChanged(int index, String? input) {
    if (timer != null) timer!.cancel();
    if (index != widget.state - 1 && input!.isNotEmpty) {
      focusNodes[index + 1].requestFocus();
      _code[index] = input;
      if (textControllers[index + 1].text.isEmpty) {
        timer = Timer(Duration(seconds: 1), () {
          log('message');
          focusNodes[index].requestFocus();
        });
      }
    } else if (index != 0 && input!.isEmpty) {
      textControllers[index].clear();
      focusNodes[index - 1].requestFocus();
      _code[index] = '';
    }
    String code = '';
    for (var i = 0; i < _code.length; i++) {
      code = code + _code[i];
    }
    widget.code.call(code);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.padding ?? 20.0),
      child: SizedBox(
        height: widget.height ?? 65.0,
        width: size.width,
        child: Form(
          key: widget.formKey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              widget.state,
              (index) {
                return Expanded(
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    margin: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: textControllers[index].text.isEmpty
                          ? widget.initialColor ?? Colors.red
                          : widget.animateColor ?? Colors.green,
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.0),
                        child: TextFormField(
                          onChanged: (input) => onChanged(index, input),
                          controller: textControllers[index],
                          focusNode: focusNodes[index],
                          textAlign: TextAlign.center,
                          maxLength: 1,
                          maxLines: 1,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.0,
                          ),
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            errorText: "",
                            counterText: "",
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
