import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/texts/text_r.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(height: 44 + getStatusBar(context)),
          const Center(
            child: TextB(
              'Settings',
              fontSize: 32,
            ),
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: AppColors.main,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: AppColors.white50,
              ),
            ),
            child: const Column(
              children: [
                SizedBox(height: 27),
                _SettingsTile(id: 1, title: 'Terms of use'),
                SizedBox(height: 16),
                _SettingsTile(id: 2, title: 'Privacy Policy'),
                SizedBox(height: 16),
                _SettingsTile(id: 3, title: 'Support page'),
                SizedBox(height: 16),
                _SettingsTile(id: 4, title: 'Share with friends'),
                SizedBox(height: 16),
                _SettingsTile(id: 5, title: 'Subscription info'),
                SizedBox(height: 27),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  const _SettingsTile({
    required this.id,
    required this.title,
  });

  final int id;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      decoration: BoxDecoration(
        color: AppColors.navbar,
        borderRadius: BorderRadius.circular(10),
      ),
      child: CupertinoButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        minSize: 45,
        child: Row(
          children: [
            SizedBox(
              width: 54,
              child: SvgPicture.asset('assets/s$id.svg'),
            ),
            TextM(title, fontSize: 16),
            const Spacer(),
            SvgPicture.asset('assets/chevron.svg'),
            const SizedBox(width: 25),
          ],
        ),
      ),
    );
  }
}
