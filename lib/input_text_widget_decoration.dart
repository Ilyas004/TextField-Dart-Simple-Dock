import 'package:flutter/material.dart';

class InputTextWidgetDecoration extends StatelessWidget {
  const InputTextWidgetDecoration({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(


      decoration: InputDecoration(

        // перед нашим текстом ввода ставит иконку
        icon: Icon(Icons.cabin),

        //на уровне рамок показывает текст если ищете аналог hint текста
        // также как у обычного текста есть текстСтайл
        labelText: 'вевы',

        // примерно такой же как то что указано сверху только размещает текст снизу от inputText
        helperText: 'dsad',

        // текстовый помошник будет ввидет до тех пор пока не впишите какой-то текст
        hintText: 'dads',

        // можно настроить ошибку и тем самым будет при ее выкидывании будет работать ErrorBorder
        errorText: 'ошибка',

        //размещает любой виджет внутри рамок слева от вводимого текста suffix тоже самое только справа
        prefix: Text('dsa'),

        //надстройка для labelText
        floatingLabelBehavior: FloatingLabelBehavior.auto,

        //убирает все стандартные отступы
        isCollapsed: false,

        //схлопывает по вертикали
        isDense: false,

        //contentPadding: ,

          // размещает виджет снизу справа
          counter: Text('dsad'),

        //позволяет изменить бакгроунд inputText
        filled: true,
        fillColor: Colors.blue,

        /* изменили стиль рамок сделали ввиде окошка
        * также можно сделать и для enableBorder, focusBorder, errorBorder, focusedErrorBorder
        * и настроить как показано ниже
        */
        border: OutlineInputBorder(

//-------------------------------------------------------------------------------
          //borderSide позволяет кастомизировать под задачи рамки TextField
          borderSide: const BorderSide(
            //цвет для рамки
            color: Colors.black,
            //позволяет убрать рамку
            style: BorderStyle.none,

            //размер рамки
            width: 1
          ),
          //скругление рамки
          borderRadius: BorderRadius.circular(10)
        ),
//-------------------------------------------------------------------------------
      //делает активной принажатии inputText а если фалс то статическим
      enabled: true

      ),
    );
  }
}
