import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/home_page.dart';

void main(){
  group('Home page test', (){
    testWidgets(
        'Show first product name',
            (WidgetTester tester) async {
              await tester.pumpWidget(const MaterialApp(
                home: HomePage(),
              ));

              expect(find.text(products[0].name), findsOneWidget);

              for(var i =1; i<5; i++){
                await tester.tap(find.text('Push'));
                await tester.pump();
                expect(find.text(products[i].name), findsOneWidget);
              }

              await tester.tap(find.text('Push'));
              await tester.pump();
              expect(find.text(products[4].name), findsOneWidget);
    });
  });


}