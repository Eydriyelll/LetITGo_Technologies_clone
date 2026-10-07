import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VisionScreen extends StatelessWidget {
  const VisionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> visionPillars = [
      {
        'title': 'Global Benchmark for Transformation',
        'description': 'To serve as a leading global standard for effortless digital transformation, enabling businesses and individuals to thrive in an interconnected world free from technical complexity and risk.',
      },
      {
        'title': 'Integrated Technological Excellence',
        'description': 'To seamlessly unite cutting-edge cybersecurity, resilient cloud infrastructure, and intelligent IoT platforms into intuitive, highly reliable solutions.',
      },
      {
        'title': 'Empowerment Through Simplicity',
        'description': 'To cultivate a future where technology acts as an uninhibited driver of innovation and progress rather than an operational burden.',
      },
      {
        'title': 'Complete Digital Peace of Mind',
        'description': 'To deliver absolute trust and security, empowering our clients to let go of digital risk and focus entirely on achieving their core goals.',
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Center(
            // Restricts the maximum width so it doesn't stretch too wide on desktop screens
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 850),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Back to home link matching your group's style
                  InkWell(
                    onTap: () => context.go('/'),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          '← Back to home',
                          style: TextStyle(
                            color: Colors.lightBlueAccent,
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  // --- VISION INTRODUCTION SECTION ---
                  const Text(
                    'Our Vision',
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Headline using the Let It Go theme
                  const Text(
                    'Let go of the complexity. Hold onto your vision.',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                  const SizedBox(height: 12),
                  // Body narrative concept
                  const Text(
                    'Technology shouldn\'t feel like an obstacle course or an operational weight. Our vision is to handle the digital backend, security, and infrastructure so completely that you can truly let go of the risk and focus entirely on growth.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 36),
                  
                  // Vision Pillars Cards List
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: visionPillars.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.only(bottom: 20.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFF112240).withValues(alpha: 0.7), // Translucent dark card
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.lightBlueAccent.withValues(alpha: 0.2), // Subtle glow border
                            width: 1,
                          ),
                        ),
                        padding: const EdgeInsets.all(24.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent.withValues(alpha: 0.1),
                                    shape: BoxShape.circle,
                                  ),
                                  child: Text(
                                    '0${index + 1}',
                                    style: const TextStyle(
                                      color: Colors.lightBlueAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Text(
                                    visionPillars[index]['title']!,
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 16),
                            Text(
                              visionPillars[index]['description']!,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.white60,
                                height: 1.6,
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}