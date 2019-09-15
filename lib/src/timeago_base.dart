String timago(dynamic referenceTime, [dynamic targetTime]) {
  DateTime t1;
  DateTime t2;
  if (targetTime == null) {
    t2 = DateTime.now();
  } else {
    t2 = targetTime;
  }

  if (referenceTime is String) {
    t1 = DateTime.parse(referenceTime);
  } else {
    t1 = referenceTime;
  }

  Duration d = t1.difference(t2);

  bool isNegative = d.isNegative;
  Duration positiveD = d.abs();

  int days = positiveD.inDays;
  int year = days ~/ 365;
  int month = days ~/ 30;
  int week = days ~/ 7;
  int hour = positiveD.inHours;
  int minute = positiveD.inMinutes;
  int second = positiveD.inSeconds;

  if (year > 0) {
    return isNegative ? '$year 年前' : '$year 年后';
  }

  if (month > 0) {
    return isNegative ? '$year 个月前' : '$year 个月后';
  }

  if (week > 0) {
    return isNegative ? '$week 周前' : '$week 周后';
  }

  if (days > 0) {
    return isNegative ? '$days 天前' : '$days 天后';
  }

  if (hour > 0) {
    return isNegative ? '$hour 小时前' : '$hour 小时后';
  }

  if (minute > 0) {
    return isNegative ? '$minute 分钟前' : '$minute 分钟后';
  }

  if (second > 0) {
    return isNegative ? '$second 秒前' : '$second 秒后';
  }

  return '刚刚';
}
