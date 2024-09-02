import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/texts/text_r.dart';

class ActivitiesPage extends StatelessWidget {
  const ActivitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 44 + getStatusBar(context)),
        const Center(
          child: TextB(
            'Activities',
            fontSize: 32,
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
