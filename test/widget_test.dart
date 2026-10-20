import 'package:flutter_test/flutter_test.dart';
import 'package:resume_portfolio/main.dart';

void main() {
  testWidgets('Portfolio app smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const ResumePortfolioApp());

    // Verify key elements load
    expect(find.text('Portfolio'), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Projects'), findsOneWidget);
    expect(find.text('About'), findsOneWidget);
  });
}
