import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class InputTextWidget3 extends StatelessWidget {
  //дает возможность хранить текст в переменной и обращаться к ней
  final textConroller = TextEditingController();
  final focusNode = FocusNode();

  const InputTextWidget3({super.key});

  void focus() {
    //откроет определенный textField для которого эта нода создавалась
    focusNode.requestFocus();
    //при вызове метода перейдет к следующему textField если их несколько
    focusNode.nextFocus();
    //уберет фокус с текста
    focusNode.dispose();
    //как nextFocus только снизу вверх
    focusNode.previousFocus();

  }

  @override
  Widget build(BuildContext context) {
    return TextField(

      //определяет направлен ли фокус на данный textField
      focusNode: focusNode,

      //подключаем наш контроллер чтоб переменная отслеживала изменения
      controller: textConroller,

      //можно вызвать метод при нажатии на кнопку на клавиатуре типа enter
      onSubmitted: null,

      //при нажатии на клавиши вызывается метод
      onChanged: null,

      //при завершении редактирование текста вызывается метод
      onEditingComplete: null,

      //вызывает метод при нажатии на TextField
      onTap: null,

      //можно совершить некую валидацию текста
      //digitsOnly позволяет вносить только цифры
      //singleLineFormatter не позволяет ставить пробелы
      //allow можно написать свой шаблон валидации и будет разрешать вводить прописанные символы
      //deny как allow только наоборот будет блокировать прописанные символы в шаблоне
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
