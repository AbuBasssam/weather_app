import 'package:flutter/material.dart';
import '../../../../../../../generated/l10n.dart';

class ViewText extends StatelessWidget {
  const ViewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 30);
    return Padding(
        padding: const EdgeInsets.only(top: 350),
        child: Center(
          child: Column(
            children: [
              // const Text(
              //   'there is no weather 😔 start',
              //   style: textStyle
              // ),
              // const  Text(
              //   'searching now 🔍',
              //   style: textStyle
              // ),
              Text(S.of(context).home_page_body, style: textStyle)
            ],
          ),
        ));
  }
}
