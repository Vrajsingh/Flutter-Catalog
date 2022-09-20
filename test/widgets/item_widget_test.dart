import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  Item myItem = Item(id: 1,
      name: 'Vishal',
      desc: 'My description',
      price: 23,
      color: Colors.black.toString(),
      image: 'My image');

  group('Item widget should display name, description and price', () {
    testWidgets('Item Widget should display item name', (widgetTester) async {
      await widgetTester.pumpWidget(ItemWidget(item: myItem));
      final nameFinder = find.text('Vishal');
      expect(nameFinder, findsOneWidget);
    });

    testWidgets('Item Widget should display item description', (widgetTester) async {
      await widgetTester.pumpWidget(ItemWidget(item: myItem));
      final descFinder = find.text('My description');
      expect(descFinder, findsOneWidget);
    });

    testWidgets('Item Widget should display item price', (widgetTester) async {
      await widgetTester.pumpWidget(ItemWidget(item: myItem));
      final priceFinder = find.text('\$23');
      expect(priceFinder, findsOneWidget);
    });

  });

}

