// ignore_for_file: prefer_const_constructors,

import 'package:flutter_test/flutter_test.dart';
import 'package:fluttershoppingblocs/catalog/bloc/catalog_bloc.dart';
import 'package:fluttershoppingblocs/catalog/models/catalog.dart';

void main() {
  group('CatalogState', () {
    group('CatalogLoading', () {
      test('supports value comparison', () {
        expect(CatalogLoading(), CatalogLoading());
      });
    });

    group('CatalogLoaded', () {
      test('supports value comparison', () {
        final catalog = Catalog(itemNames: const ['item #1', 'item #2']);
        expect(CatalogLoaded(catalog), CatalogLoaded(catalog));
      });
    });
  });
}
