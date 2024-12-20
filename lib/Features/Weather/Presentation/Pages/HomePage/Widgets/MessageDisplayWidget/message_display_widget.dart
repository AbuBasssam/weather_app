import 'package:flutter/material.dart';

import '../../../../../../../generated/l10n.dart';

class MessageDisplayWidget extends StatelessWidget {
  final String message;
  final VoidCallback
      onDialogClosed; // Callback to trigger after dialog is closed

  const MessageDisplayWidget({
    super.key,
    required this.message,
    required this.onDialogClosed,
  });

  @override
  Widget build(BuildContext context) {
    // Show dialog after the widget has been built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showMessageDialog(context, message);
    });

    return const SizedBox.shrink(); // Empty widget as no button is needed
  }

  void _showMessageDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).error_message_header),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                onDialogClosed(); // Trigger the callback after dialog is dismissed
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
