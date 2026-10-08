import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../utils/responsive.dart';
import '../widgets/glass_card.dart';

class MissionSection extends StatelessWidget {
  const MissionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentBounds(
      verticalPadding: const EdgeInsets.symmetric(vertical: AppSpacing.xxl),
      child: GlassCard(
        fillColor: AppColors.glassFillTinted,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Our Motto',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: context.isDesktop ? 640 : double.infinity,
              child: Text(
                'The bugs never bothered us anyway.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}