import 'package:flutter/cupertino.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/textfields/txt_field.dart';
import '../../../core/widgets/texts/text_r.dart';
import '../widgets/sheet_appbar.dart';

class AddIncomeSheet extends StatefulWidget {
  const AddIncomeSheet({super.key, required this.income});

  final bool income;

  @override
  State<AddIncomeSheet> createState() => _AddIncomeSheetState();
}

class _AddIncomeSheetState extends State<AddIncomeSheet> {
  final controller1 = TextEditingController();
  bool active = false;

  void checkActive() {
    setState(() {
      active = getButtonActive([
        controller1,
      ]);
    });
  }

  @override
  void dispose() {
    controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.black.withOpacity(0.75),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff000000).withOpacity(0.05),
            blurRadius: 100,
            spreadRadius: 0,
            offset: const Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 14),
          SheetAppbar(income: widget.income),
          const SizedBox(height: 16),
          TextM(
            'Title',
            fontSize: 16,
            color: AppColors.white40,
          ),
          const SizedBox(height: 8),
          TxtField(
            controller: controller1,
            hintText: 'Name title',
            onChanged: checkActive,
          ),
        ],
      ),
    );
  }
}
