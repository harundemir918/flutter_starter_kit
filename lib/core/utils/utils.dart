import 'package:fluttertoast/fluttertoast.dart';

import '../constants/color_constants.dart';

class Utils {
  static void showToast(String message) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      textColor: kWhiteColor,
      fontSize: 16.0,
    );
  }

  static String interpolate(
    String string, {
    Map<String, dynamic> params = const {},
  }) {
    final keys = params.keys;
    var result = string;
    for (final key in keys) {
      result = result.replaceAll('{{$key}}', params[key]);
    }

    return result;
  }
}
