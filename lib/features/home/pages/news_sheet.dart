import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/models/news.dart';
import '../../../core/widgets/texts/text_r.dart';

class NewsSheet extends StatelessWidget {
  const NewsSheet({super.key, required this.news});

  final News news;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            const Color(0xff101112).withOpacity(0.75),
            const Color(0xff0E2B2B).withOpacity(0.75),
          ],
        ),
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
        children: [
          const SizedBox(height: 6),
          Container(
            height: 5,
            width: 36,
            decoration: BoxDecoration(
              color: AppColors.white8,
              borderRadius: BorderRadius.circular(3),
            ),
          ),
          const SizedBox(height: 3),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 23),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextB(
                    news.title,
                    fontSize: 32,
                  ),
                ),
              ),
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
              const SizedBox(width: 23),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
