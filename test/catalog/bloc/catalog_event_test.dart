// ignore_for_file: prefer_const_constructors
import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershoppingblocs/catalog/bloc/catalog_bloc.dart';

void main() {
  group('CatalogEvent', () {
    group('CatalogStarted', () {
      test('supports value comparison', () {
        expect(CatalogStarted(), CatalogStarted());
      });
    });
  });
}
