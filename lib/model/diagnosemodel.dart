import 'package:flutter/material.dart';

class Diagnosepage2Model {
  late TextEditingController textController;
  late FocusNode textFieldFocusNode;
  late FocusNode unfocusNode;

  String? textControllerValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }

  void dispose() {
    textController.dispose();
    textFieldFocusNode.dispose();
  }
}
