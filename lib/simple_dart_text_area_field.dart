import 'dart:html';

import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class TextAreaField extends Component
    with ValueChangeEventSource<String>, MixinDisable
    implements StateComponent<String> {
  TextAreaElement textAreaElement = TextAreaElement();

  @override
  Element get element => textAreaElement;

  TextAreaField() : super('TextAreaField') {
    textAreaElement.onInput.listen((event) {
      fireValueChange(value, value);
    });
  }

  String get value => textAreaElement.value ?? '';

  set value(String value) => textAreaElement.value = value;

  @override
  String get state => value;

  @override
  set state(String newValue) => value = newValue;

  void focus() {
    textAreaElement.focus();
  }
}
