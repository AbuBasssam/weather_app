import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class UpArrowIconWidget extends StatelessWidget {
  const UpArrowIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Ionicons.chevron_up_outline, // Long upward filled arrow
      size: 32, // Elongated size for the up arrow
    );
  }
}
