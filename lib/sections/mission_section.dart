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
            Text('Our mission', style: Theme.of(context).textTheme.headlineLarge),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: context.isDesktop ? 640 : double.infinity,
              child: Text(
                'Our mission is to provide simple, secure, and useful IT '
                'solutions in cybersecurity, IoT, and cloud computing that '
                'help businesses, organizations, and individuals use '
                'technology safely, efficiently, and effectively.',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
