
import '../route.dart';

 TextStyle textStyle1() {
  return TextStyle(
    color: Colors.black,
    fontSize: 35,
    locale: Locale.fromSubtags(languageCode: "ar"),
  );
}

TextStyle textStyle1B() {
  return TextStyle(
    color: Colors.black,
    fontSize: 35,
    fontWeight: FontWeight.bold,
  );
}
TextStyle textStyle2() {
  return TextStyle(
    color: Colors.grey,
    fontSize: 20,
  );
}
TextStyle textStyle2B() {
  return TextStyle(
    color: Colors.black,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}
