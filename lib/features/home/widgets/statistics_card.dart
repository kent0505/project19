import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_r.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      decoration: BoxDecoration(
        color: AppColors.main,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                'assets/card_bg.svg',
                fit: BoxFit.fill,
              ),
            ),
            const Row(
              children: [
                SizedBox(width: 24),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextM(
                      'Total Portfolio',
                      fontSize: 16,
                      font: Fonts.mulishM,
                    ),
                    TextB(
                      '\$10,000',
                      fontSize: 32,
                      font: Fonts.mulishB,
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextM(
                      'Income',
                      fontSize: 14,
                      font: Fonts.mulishM,
                    ),
                    SizedBox(height: 4),
                    TextB(
                      '\$7000',
                      fontSize: 16,
                      font: Fonts.mulishB,
                    ),
                  ],
                ),
                SizedBox(width: 16),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextM(
                      'Expense',
                      fontSize: 14,
                      font: Fonts.mulishM,
                    ),
                    SizedBox(height: 4),
                    TextB(
                      '\$3000',
                      fontSize: 16,
                      font: Fonts.mulishB,
                    ),
                  ],
                ),
                SizedBox(width: 28),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
