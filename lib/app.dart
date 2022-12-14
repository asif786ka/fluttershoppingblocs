import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttershoppingblocs/shopping_repository.dart';

import 'cart/bloc/cart_bloc.dart';
import 'cart/view/cart_page.dart';
import 'catalog/bloc/catalog_bloc.dart';
import 'catalog/view/catalog_page.dart';


class App extends StatelessWidget {

  const App({Key? key, required this.shoppingRepository}) : super(key: key);

  final ShoppingRepository shoppingRepository;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => CatalogBloc(
            shoppingRepository: shoppingRepository,
          )..add(CatalogStarted()),
        ),
        BlocProvider(
          create: (_) => CartBloc(
            shoppingRepository: shoppingRepository,
          )..add(CartStarted()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Bloc Shopping Cart',
        initialRoute: '/',
        routes: {
          '/': (_) => const CatalogPage(),
          '/cart': (_) => const CartPage(),
        },
      ),
    );
  }
}
