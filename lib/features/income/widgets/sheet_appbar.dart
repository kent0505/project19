import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_r.dart';

class SheetAppbar extends StatelessWidget {
  const SheetAppbar({super.key, required this.income});

  final bool income;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(width: 8),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: TextB(
            income ? 'Add Income' : 'Add Expense',
            fontSize: 32,
          ),
        ),
        const Spacer(),
        CupertinoButton(
          onPressed: () {
            context.pop();
          },
          padding: EdgeInsets.zero,
          minSize: 20,
          child: const TextM(
            'Close',
            fontSize: 16,
            color: AppColors.green,
          ),
        ),
        const SizedBox(width: 8),
      ],
    );
  }
}
