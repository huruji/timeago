import 'package:timeago/timeago.dart';
import 'package:test/test.dart';

void main() {
  print(timago(DateTime(2010)));
  print(timago(DateTime(2019, 9, 16), DateTime(2019, 9, 10)));
}
