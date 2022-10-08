import 'package:calculator_numsys/Widgets/buttons.dart';
import 'package:calculator_numsys/pages/config.dart';
import 'package:flutter/material.dart';
import 'package:rotating_icon_button/rotating_icon_button.dart';
// import '../Widgets/buttons.dart';
import '../Logic/logic.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  final numbs = [
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10',
    '11',
    '12',
    '13',
    '14',
    '15',
    '16'
  ];

  // Logic app

  List<String> operations = [];

  List<String> numbers = [];
  String number = '0';

  String question = '';
  String ans = '';

  double a = 0;
  double b = 0;

  double da = 0;
  double db = 0;

// ==============Functions=From=List==============
  String _dropdownFirstValue = '10';
  String templess = '';
  String _dropdownSecondValue = '2';
// ===============================================
  void dropDownCallbackFirstNumber(String? selectedValue) {
    if (selectedValue is String) {
      rechangeded(selectedValue); // Rechanged activited button

      setState(() {
        _dropdownFirstValue = selectedValue;
        activeButton2;
        activeButton3;
        activeButton4;
        activeButton5;
        activeButton6;
        activeButton7;
        activeButton8;
        activeButton9;
        activeButtonA;
        activeButtonB;
        activeButtonC;
        activeButtonD;
        activeButtonE;
        activeButtonF;
      });
      btnOnClick(''); // from update answers
    }
  }

  void rechangeValues() {
    templess = _dropdownFirstValue;
    _dropdownFirstValue = _dropdownSecondValue;
    _dropdownSecondValue = templess;
    setState(() {
      _dropdownFirstValue;
      _dropdownSecondValue;
      dropDownCallbackFirstNumber(_dropdownFirstValue);
    });
    btnOnClick(''); // from update answers
  }

  void dropDownCallbackSecondNumber(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownSecondValue = selectedValue;
      });
      btnOnClick(''); // from update answers
    }
  }
// ===============================================
// ===============================================

  void opetationSubAndDel() {
    while ((operations.contains('×') || operations.contains('÷')) &&
        (numbers[operations.indexOf('×') + 1] != '' ||
            numbers[operations.indexOf('÷') + 1] != '')) {
      if (operations.contains('×') && operations.contains('÷')) {
        if (operations.indexOf('×') < operations.indexOf('÷')) {
          a = (double.parse(numbers[operations.indexOf('×')]));
          b = (double.parse(numbers[operations.indexOf('×') + 1]));

          numbers.replaceRange(operations.indexOf('×'),
              operations.indexOf('×') + 2, [(a * b).toString()]);
          operations.remove('×');
        } else {
          da = (double.parse(numbers[operations.indexOf('÷')]));
          db = (double.parse(numbers[operations.indexOf('÷') + 1]));

          if (da / db != (da / db).round()) {
            numbers.replaceRange(operations.indexOf('÷'),
                operations.indexOf('÷') + 2, [(da / db).toString()]);
          } else {
            numbers.replaceRange(operations.indexOf('÷'),
                operations.indexOf('÷') + 2, [(da / db).round().toString()]);
          }
          operations.remove('÷');
        }
      } else if (operations.contains('×') &&
          numbers[operations.indexOf('×') + 1] != '') {
        a = (double.parse(numbers[operations.indexOf('×')]));
        b = (double.parse(numbers[operations.indexOf('×') + 1]));

        numbers.replaceRange(operations.indexOf('×'),
            operations.indexOf('×') + 2, [(a * b).toString()]);
        operations.remove('×');
      } else if (operations.contains('÷') &&
          numbers[operations.indexOf('÷') + 1] != '') {
        da = (double.parse(numbers[operations.indexOf('÷')]));
        db = (double.parse(numbers[operations.indexOf('÷') + 1]));

        numbers.replaceRange(operations.indexOf('÷'),
            operations.indexOf('÷') + 2, [(da / db).toString()]);

        operations.remove('÷');
      } else {
        break;
      }
    }
  }

  void opetationPlusAndMinus() {
    while ((operations.contains('+') || operations.contains('−')) &&
        (numbers[operations.indexOf('+') + 1] != '' ||
            numbers[operations.indexOf('−') + 1] != '')) {
      if (operations.contains('+') && operations.contains('−')) {
        if (operations.indexOf('+') < operations.indexOf('−')) {
          a = (double.parse(numbers[operations.indexOf('+')]));
          b = (double.parse(numbers[operations.indexOf('+') + 1]));

          numbers.replaceRange(operations.indexOf('+'),
              operations.indexOf('+') + 2, [(a + b).toString()]);
          operations.remove('+');
        } else {
          da = (double.parse(numbers[operations.indexOf('−')]));
          db = (double.parse(numbers[operations.indexOf('−') + 1]));

          numbers.replaceRange(operations.indexOf('−'),
              operations.indexOf('−') + 2, [(da - db).round().toString()]);
          operations.remove('−');
        }
      } else if (operations.contains('+') &&
          numbers[operations.indexOf('+') + 1] != '') {
        a = (double.parse(numbers[operations.indexOf('+')]));
        b = (double.parse(numbers[operations.indexOf('+') + 1]));

        numbers.replaceRange(operations.indexOf('+'),
            operations.indexOf('+') + 2, [(a + b).toString()]);
        operations.remove('+');
      } else if (operations.contains('−') &&
          numbers[operations.indexOf('−') + 1] != '') {
        da = (double.parse(numbers[operations.indexOf('−')]));
        db = (double.parse(numbers[operations.indexOf('−') + 1]));

        numbers.replaceRange(operations.indexOf('−'),
            operations.indexOf('−') + 2, [(da - db).round().toString()]);
        operations.remove('−');
      } else {
        break;
      }
    }
  }

  // THE BUTTON DEL IF BTN DEL LONG PRESSED
  void clearBtnArea(String btnVal) {
    setState(() {
      question = ''; // The math question
      ans = ''; // The answers from the task
    });
  }

  bool flag = true;
  void btnOnClick(String btnVal) {
    flag = true;
    question = removeDivider(question); //removed all ','
    if (btnVal == 'DEL' && question != '') {
      question = question.substring(0, question.length - 1);
    } else if (btnVal != 'DEL' && btnVal != '=') {
      if (question == '' &&
          btnVal != '+' &&
          btnVal != '−' &&
          btnVal != '×' &&
          btnVal != '÷') {
        question = question + btnVal;
      } else if (question.isNotEmpty) {
        if ((question[question.length - 1] == '+' ||
                question[question.length - 1] == '−' ||
                question[question.length - 1] == '×' ||
                question[question.length - 1] == '÷') &&
            (btnVal == '+' ||
                btnVal == '−' ||
                btnVal == '×' ||
                btnVal == '÷')) {
          question = question.substring(0, question.length - 1) + btnVal;
        } else {
          question = question + btnVal;
        }
      } else {
        question = question + btnVal;
      }
    }
    if (question != '') {
      if (question[0] == '.') {
        question = '';
      }
    }

    operations = [];
    numbers = [''];
    number = '';

    for (int i = 0; i < question.length; i++) {
      if (question[i] == '+' ||
          question[i] == '−' ||
          question[i] == '×' ||
          question[i] == '÷') {
        operations.add(question[i]);
        numbers.add('');
        number = '';
      } else {
        number = number + question[i];

        numbers.removeLast();
        numbers.add(number);

        if (question[i] != '.') {
          if (int.parse(transfromWords(question[i])) >=
              int.parse(_dropdownFirstValue)) {
            ans = 'Bad number sys.';
            flag = false;
          }
        }
      }
    }

    // ====================Debug prints=======================
    print('__Before__');
    print('question = $question');
    print('Operations = $operations');
    print('Numbers Be = $numbers');

    if (flag) {
      // In here the massive numbers translated in 10 SYS
      for (int i = 0; i < numbers.length; i++) {
        if (numbers[i] != '') {
          translatenumsys(numbers[i], int.parse(_dropdownFirstValue), 10);
          numbers[i] = endans;
        }
      }
      print('Numbers in 10 SS = $numbers');

      opetationSubAndDel(); // * and /
      opetationPlusAndMinus(); // + and -

      // ===================Debug prints==========================
      print('__After__');
      print('Operations = $operations');
      print('Numbers = $numbers');

      if (numbers[0].isNotEmpty) {
        translatenumsys(numbers[0], 10, int.parse(_dropdownSecondValue));
      }

      ans = endans;
      print('End ans = $endans');
      print('\n');
      print('.\n');

      if (ans.isNotEmpty) {
        if ((double.parse(ans)) != (double.parse(ans)).round()) {
          ans = ans;
        } else {
          ans = (double.parse(ans)).round().toString();
        }
      }

      if (btnVal == '=') {
        translatenumsys(numbers[0], 10, int.parse(_dropdownFirstValue));
        question = endans;
      }
      if (question.isEmpty) {
        ans = '';
      }
    }
    question = addDivider(question);
    ans = addDivider(ans);
    setState(() {
      question;
      ans;
    });
  }

  // UI app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF3276A6),
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.more_vert),
              color: const Color(txtColor),
              splashRadius: 20,
              iconSize: 25,
            )
          ],
          backgroundColor: const Color(backColor),
          shadowColor: const Color(noneColor),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Flexible(
              flex: 10,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(width: 10),
                      Flexible(
                        child: SingleChildScrollView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            question,
                            textAlign: TextAlign.right,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 60,
                                fontFamily: 'Inter'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(width: 10),
                      Flexible(
                        child: SingleChildScrollView(
                          reverse: true,
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            ans,
                            textAlign: TextAlign.left,
                            style: const TextStyle(
                                color: Color.fromARGB(255, 161, 150, 150),
                                fontSize: 40,
                                fontFamily: 'Inter'),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    color: const Color(backLiColor),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // =======================================
                        DropdownButton<String>(
                          dropdownColor:
                              const Color.fromARGB(255, 114, 181, 223),
                          value: _dropdownFirstValue,
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          elevation: 10,
                          style: const TextStyle(color: Color(txtDarkColor)),
                          underline: Container(
                            height: 10,
                            color: const Color(noneColor),
                          ),
                          onChanged: dropDownCallbackFirstNumber,
                          items: numbs
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                width: 100,
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                      fontSize: 35, fontFamily: 'Inter'),
                                ),
                              ),
                            );
                          }).toList(),
                        ),

                        RotatingIconButton(
                            onTap: rechangeValues,
                            // ===========ANIMATIONS========

                            rotateType: RotateType.full,
                            duration: const Duration(milliseconds: 700),
                            curve: Curves.fastOutSlowIn,
                            shape: ButtonShape.circle,
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 5,
                            ),
                            background: const Color(noneColor),
                            // ==================================
                            child: const Icon(
                              Icons.swap_horiz,
                              color: Color(txtDarkColor),
                              size: 40,
                            )),

                        DropdownButton<String>(
                          dropdownColor:
                              const Color.fromARGB(255, 114, 181, 223),
                          value: _dropdownSecondValue,
                          icon: const Visibility(
                              visible: false,
                              child: Icon(Icons.arrow_downward)),
                          elevation: 10,
                          style: const TextStyle(color: Color(txtDarkColor)),
                          underline: Container(
                            height: 10,
                            color: const Color(noneColor),
                          ),
                          onChanged: dropDownCallbackSecondNumber,
                          items: numbs
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Container(
                                width: 100,
                                alignment: Alignment.center,
                                child: Text(
                                  value,
                                  style: const TextStyle(
                                      fontSize: 35, fontFamily: 'Inter'),
                                ),
                              ),
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // BUTTONS

            Flexible(
              flex: 21,
              child: Container(
                color: const Color(backDarkColor),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SpecButton(
                            text: 'D',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonD,
                          ),
                          SpecButton(
                            text: 'A',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonA,
                          ),
                          SpecButton(
                            text: '7',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton7,
                          ),
                          SpecButton(
                            text: '4',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton4,
                          ),
                          SpecButton(
                            text: '1',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: true,
                          ),
                          SpecButton(
                            text: '0',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: true,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SpecButton(
                            text: 'E',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonE,
                          ),
                          SpecButton(
                            text: 'B',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonB,
                          ),
                          SpecButton(
                            text: '8',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton8,
                          ),
                          SpecButton(
                            text: '5',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton5,
                          ),
                          SpecButton(
                            text: '2',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton2,
                          ),
                          SpecButton(
                            text: '.',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: true,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SpecButton(
                            text: 'F',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonF,
                          ),
                          SpecButton(
                            text: 'C',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButtonC,
                          ),
                          SpecButton(
                            text: '9',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton9,
                          ),
                          SpecButton(
                            text: '6',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton6,
                          ),
                          SpecButton(
                            text: '3',
                            fillColor: noneColor,
                            textColor: txtColor,
                            textSize: numbBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: activeButton3,
                          ),
                          SpecButton(
                            text: '=',
                            fillColor: ansColor,
                            textColor: txtColor,
                            textSize: funcBtnSize,
                            callback: btnOnClick,
                            widthBtn: heightNumbBtn,
                            heightBtn: heightNumbBtn,
                            activeButton: true,
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                              margin: const EdgeInsets.all(2.0),
                              child: SizedBox(
                                width: widthFuncBtn,
                                height: heightFuncbBtn,
                                child: TextButton(
                                  onPressed: () => btnOnClick('DEL'),
                                  onLongPress: () => clearBtnArea('DEL'),
                                  style: TextButton.styleFrom(
                                    primary: Colors.white,
                                    backgroundColor: const Color(otherbutColor),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                  ),
                                  child: const Text('DEL',
                                      style: TextStyle(
                                          fontSize: 31,
                                          color: Color(txtColor),
                                          fontFamily: 'Inter')),
                                ),
                              )),
                          const SizedBox(
                            height: 10, // 14
                          ),
                          SpecButton(
                            text: '÷',
                            fillColor: otherbutColor,
                            textColor: txtColor,
                            textSize: funcBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthFuncBtn,
                            heightBtn: heightFuncbBtn,
                            activeButton: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SpecButton(
                            text: '×',
                            fillColor: otherbutColor,
                            textColor: txtColor,
                            textSize: funcBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthFuncBtn,
                            heightBtn: heightFuncbBtn,
                            activeButton: true,
                          ),
                          const SizedBox(
                            height: 10, // 15
                          ),
                          SpecButton(
                            text: '−',
                            fillColor: otherbutColor,
                            textColor: txtColor,
                            textSize: funcBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthFuncBtn,
                            heightBtn: heightFuncbBtn,
                            activeButton: true,
                          ),
                          const SizedBox(
                            height: 10, // 15
                          ),
                          SpecButton(
                            text: '+',
                            fillColor: otherbutColor,
                            textColor: txtColor,
                            textSize: funcBtnSize,
                            callback: btnOnClick,
                            widthBtn: widthFuncBtn,
                            heightBtn: heightFuncbBtn,
                            activeButton: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Flexible(
                flex: 1,
                child: Container(
                  height: 10,
                  color: const Color(backDarkColor),
                ))
          ],
        ));
  }
}
