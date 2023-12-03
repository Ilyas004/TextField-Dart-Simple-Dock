import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextWidget extends StatelessWidget {
  const InputTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: true,

      //не позволяет изменять текст
      readOnly: false,

      // dark or light theme keyboard
      keyboardAppearance: Brightness.light,

      //меняет кнопку на клавиатуре и меняет ее функционал
      textInputAction: TextInputAction.go,

      // меняет клавиатуру под задачу
      keyboardType: TextInputType.number,

      //не показывать курсор
      showCursor: false,

      //задать размеры и цвет курсору
      cursorColor: Colors.red,
      cursorRadius: Radius.circular(4),
      cursorWidth: 1,
      cursorHeight: 1,

      //скрывает символы
      obscureText: true,

      //изменить символ который скрывает текст
      obscuringCharacter: '3',

      //корректирует текст если небольшие ошибки
      autocorrect: true,

      //подсказка ввиде слов в клавиатуре работает в связке с autocorrect
      enableSuggestions: true,

      //определяет когда ставить заглавную букву
      textCapitalization: TextCapitalization.sentences,

      //тире не сливаются
      smartDashesType: SmartDashesType.disabled,

      //нельзя копировать или выделить текст
      enableInteractiveSelection: false,

      //меняет тему менюшки при выделении текста
      selectionControls: CupertinoTextSelectionControls(),

      maxLines: 1,


      //удобная штука для контроля количества сиволов
      maxLength: 10,
      //надстройка для maxLength
      maxLengthEnforcement: MaxLengthEnforcement.enforced,

      //направление текста а также его расположение
      textAlign: TextAlign.left,
      //направление текста
      textDirection: TextDirection.ltr,
    );
  }
}
