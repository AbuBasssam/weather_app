import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../../../../../../generated/l10n.dart';

class LastUpdatedDateTimeText extends StatelessWidget {
  final DateTime dateTime;
  const LastUpdatedDateTimeText({
    super.key,
    required this.dateTime,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontSize: 22,
    );
    String currentLocl = Intl.getCurrentLocale();

    // Format the date using the current locale
    String formattedDate = DateFormat.EEEE(currentLocl).format(dateTime);
    String formattedTime = DateFormat.Hm(currentLocl).format(dateTime);

    return Text(
        '${S.of(context).last_updated_text} $formattedDate $formattedTime',
        style: textStyle);
  }
}
