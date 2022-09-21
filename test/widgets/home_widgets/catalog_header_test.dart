import 'package:flutter_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Catalog header widget should display header and subheader', () {
    testWidgets('Catalog header widget should display header', (widgetTester) async {
      await widgetTester.pumpWidget(CatalogHeader());
      final headerFinder = find.text('Meta Store');
      expect(headerFinder, findsOneWidget);
    });

    testWidgets('Catalog header widget should display subheader', (widgetTester) async {
      await widgetTester.pumpWidget(CatalogHeader());
      final subHeaderFinder = find.text('Trending Products');
      expect(subHeaderFinder, findsOneWidget);
    });
  });
}