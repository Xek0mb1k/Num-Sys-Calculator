import 'dart:math';

// Default values
bool activeButton2 = true;
bool activeButton3 = true;
bool activeButton4 = true;
bool activeButton5 = true;
bool activeButton6 = true;
bool activeButton7 = true;
bool activeButton8 = true;
bool activeButton9 = true;
bool activeButtonA = false;
bool activeButtonB = false;
bool activeButtonC = false;
bool activeButtonD = false;
bool activeButtonE = false;
bool activeButtonF = false;

void rechangeded(value) {
  if (value == '2') {
    activeButton2 = false;
    activeButton3 = false;
    activeButton4 = false;
    activeButton5 = false;
    activeButton6 = false;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '3') {
    activeButton2 = true;
    activeButton3 = false;
    activeButton4 = false;
    activeButton5 = false;
    activeButton6 = false;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '4') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = false;
    activeButton5 = false;
    activeButton6 = false;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '5') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = false;
    activeButton6 = false;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '6') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = false;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '7') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = false;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '8') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = false;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '9') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = false;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '10') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = false;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '11') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = false;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '12') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = true;
    activeButtonC = false;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '13') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = true;
    activeButtonC = true;
    activeButtonD = false;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '14') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = true;
    activeButtonC = true;
    activeButtonD = true;
    activeButtonE = false;
    activeButtonF = false;
  } else if (value == '15') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = true;
    activeButtonC = true;
    activeButtonD = true;
    activeButtonE = true;
    activeButtonF = false;
  } else if (value == '16') {
    activeButton2 = true;
    activeButton3 = true;
    activeButton4 = true;
    activeButton5 = true;
    activeButton6 = true;
    activeButton7 = true;
    activeButton8 = true;
    activeButton9 = true;
    activeButtonA = true;
    activeButtonB = true;
    activeButtonC = true;
    activeButtonD = true;
    activeButtonE = true;
    activeButtonF = true;
  }
}

String endans = '';
num trans = 0;
void translatenumsys(String sourseVal, int numSysFrom, int numSysTo) {
  endans = '';
  trans = 0;

  // translate sourseVal in 10 sys
  if (numSysFrom != 10) {
    for (int i = 0; i < sourseVal.length; i++) {
      trans +=
          (double.parse(transfromWords(sourseVal[sourseVal.length - i - 1]))) *
              pow(numSysFrom, i);
    }
    sourseVal = trans.toString();
  }

  // Here the numb in 10 SYS
  endans = double.parse(sourseVal).toInt().toRadixString(numSysTo);
}

String transfromWords(String st) {
  return 10 <= st.codeUnitAt(0) - 55 ? (st.codeUnitAt(0) - 55).toString() : st;
}

String addDivider(String qwestion) {
  String ans = "";
  int count = 0;
  if (qwestion.contains('.')) {
    for (int i = qwestion.indexOf('.') - 1; i >= 0; i--) {
      if (count == 3) {
        count = 0;
        ans += ',';
      }

      ans += qwestion[i];
      if (qwestion[i] != '+' &&
          qwestion[i] != '−' &&
          qwestion[i] != '×' &&
          qwestion[i] != '÷') {
        count += 1;
      } else {
        count = 0;
      }
      
    }

    //removed bug ','
    ans = ans.split('').reversed.join('');

    for (int i = 0; i < ans.length - 1; i++) {
      if ((ans[i] == '+' || ans[i] == '−' || ans[i] == '×' || ans[i] == '÷') &&
          ans[i + 1] == ',') {

        ans = ans.replaceRange(i+1, i + 2, '');
        
      }
    }


    return ans +
        qwestion.substring(qwestion.indexOf('.'));
  } else {
    for (int i = qwestion.length - 1; i >= 0; i--) {
      if (count == 3) {
        count = 0;
        ans += ',';
      }

      ans += qwestion[i];
      if (qwestion[i] != '+' &&
          qwestion[i] != '−' &&
          qwestion[i] != '×' &&
          qwestion[i] != '÷') {
        count += 1;
      } else {
        count = 0;
      }
    }

    //removed bug ','
    ans = ans.split('').reversed.join('');

    for (int i = 0; i < ans.length - 1; i++) {
      if ((ans[i] == '+' || ans[i] == '−' || ans[i] == '×' || ans[i] == '÷') &&
          ans[i + 1] == ',') {

        ans = ans.replaceRange(i+1, i + 2, '');
        
      }
    }

    return ans;
  }
}

String removeDivider(String question) {
  String ans = "";

  ans = question.replaceAll(',', '');
  return ans;
}
