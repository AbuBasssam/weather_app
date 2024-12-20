import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class DownArrowIconWidget extends StatelessWidget {
  const DownArrowIconWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Icon(
      Ionicons.chevron_down_outline, // Long upward filled arrow
      size: 32, // Elongated size for the down arrow
    );
  }
}
