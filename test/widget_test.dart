// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:telkom_career/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
// abstract class Hewan {
//   properti atau params
//   String? nama;
//   int? berat;
//   int? umur;

//   Hewan({
//     this.nama,
//     this.berat,
//     this.umur,
//   });

//   void makan(int banyak) {
//     berat = berat! + banyak;
//   }

//   void pup(int banyak) {
//     berat = berat! - banyak;
//   }

//   void tidur() {}
// }

// class Burung extends Hewan {
//   String? warnabulu;
//   int? jumlahparuh;
//   Burung({
//     this.warnabulu,
//     this.jumlahparuh,
//     String? namaburung,
//     int? beratburung,
//     int? umurburung
//   }):super(nama: namaburung, berat: beratburung, umur: umurburung);
// }


// void  main() {
//   var burung1 = Burung(
//     beratburung: 5, jumlahparuh: 1, namaburung: "joni", umurburung: 5, warnabulu: "hijau");
//     print(
//       "${burung1.jumlahparuh}, ${burung1.warnabulu}, ${burung1.berat}, ${burung1.nama}, ${burung1.umur}");
//     burung1.makan(10);
//     print(
//       "${burung1.jumlahparuh}, ${burung1.warnabulu}, ${burung1.berat}, ${burung1.nama}, ${burung1.umur}");
// }