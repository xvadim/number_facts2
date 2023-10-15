import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart';
import 'package:number_facts/core/injection/injection.dart';

import 'package:number_facts/main.dart';

void main() {
  testWidgets('Fact view test', (WidgetTester tester) async {
    configureInjection(env: Environment.test);

    await tester.pumpWidget(const NumbersFactApp());
    await tester.pump();
    expect(find.text('42 answer'), findsNothing);
    expect(find.text('today'), findsOneWidget);

    await tester.tap(find.text('Random'));
    await tester.pump();
    expect(find.text('42 answer'), findsOneWidget);
    expect(find.text('today'), findsNothing);
  });
}
