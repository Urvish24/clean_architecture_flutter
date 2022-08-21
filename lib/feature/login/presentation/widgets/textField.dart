import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../constants/strings.dart';

class textField extends StatefulWidget {
  String placeholder;
  TextEditingController controller;
  TextInputType keybord;
  FocusNode focus;
  FocusNode? nextfocus;
  bool obscureText;
  bool enable;
  int line;
  int maxLength;

  textField(
      {required this.placeholder,
      required this.controller,
      this.keybord = TextInputType.text,
      required this.focus,
      this.nextfocus,
      this.obscureText = false,
      this.enable = true,
      this.line = 1,
      this.maxLength = 1});

  @override
  _textFieldState createState() => _textFieldState();
}

class _textFieldState extends State<textField> {
  bool _is_focus = false;

  @override
  void initState() {
    super.initState();
    widget.focus.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    if (widget.focus.hasFocus) {
      if (this.mounted) {
        setState(() {
          _is_focus = true;
        });
      }
    } else {
      if (this.mounted) {
        setState(() {
          _is_focus = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (widget.line == 1) ? 40 : 100,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: (widget.maxLength == 1)
          ? new TextFormField(
              maxLines: widget.line,
              //enabled: widget.enable,
              textInputAction: TextInputAction.next,
              obscureText: widget.obscureText,
              onFieldSubmitted: (v) {
                (widget.nextfocus != null)
                    ? FocusScope.of(context).requestFocus(widget.nextfocus)
                    : FocusScope.of(context).unfocus();
              },
              focusNode: widget.focus,
              readOnly: (widget.enable) ? false : true,
              controller: widget.controller,
              keyboardType: widget.keybord,
              cursorColor: appSecondColor,
              style: figtreeMedium(fSize: 16),
              decoration: new InputDecoration(
                filled: true,
                fillColor: _is_focus ? Colors.transparent : grayLight,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                //contentPadding: EdgeInsets.zero,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(color: appSecondColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(
                      color: _is_focus ? appSecondColor : Colors.transparent,
                      width: 2),
                ),
                hintText: widget.placeholder,
                hintStyle: figtreeMedium(
                    fSize: 16, fColor: Color.fromRGBO(0, 0, 0, 0.3)),
              ),
            )
          : new TextFormField(
              inputFormatters: [
                LengthLimitingTextInputFormatter(widget.maxLength),
              ],
              maxLines: widget.line,
              //enabled: widget.enable,
              textInputAction: TextInputAction.next,
              obscureText: widget.obscureText,
              onFieldSubmitted: (v) {
                (widget.nextfocus != null)
                    ? FocusScope.of(context).requestFocus(widget.nextfocus)
                    : FocusScope.of(context).unfocus();
              },
              focusNode: widget.focus,
              readOnly: (widget.enable) ? false : true,
              controller: widget.controller,
              keyboardType: widget.keybord,
              cursorColor: appSecondColor,
              style: figtreeMedium(fSize: 16),
              decoration: new InputDecoration(
                filled: true,
                fillColor: _is_focus ? Colors.transparent : grayLight,
                contentPadding:
                    EdgeInsets.symmetric(vertical: 0, horizontal: 10),
                //contentPadding: EdgeInsets.zero,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(color: appSecondColor, width: 2),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: new BorderSide(
                      color: _is_focus ? appSecondColor : Colors.transparent,
                      width: 2),
                ),
                hintText: widget.placeholder,
                hintStyle: figtreeMedium(
                    fSize: 16, fColor: Color.fromRGBO(0, 0, 0, 0.3)),
              ),
            ),
    );
  }
}
