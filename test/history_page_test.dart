import 'package:flutter_test/flutter_test.dart';
import 'package:let_it_go_technologies/main.dart';
import 'package:let_it_go_technologies/routing/app_router.dart';

void main() {
  testWidgets('history route displays the company story', (tester) async {
    appRouter.go(AppRoutes.history);
    await tester.pumpWidget(const LetItGoApp());
    await tester.pumpAndSettle();

    expect(find.text('Our History'), findsOneWidget);
    expect(find.text('A vision takes shape'), findsOneWidget);
    expect(find.textContaining('Across cloud computing, IoT'), findsOneWidget);
    expect(find.textContaining('close group of friends'), findsOneWidget);
  });
}
