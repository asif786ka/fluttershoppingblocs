import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttershoppingblocs/shopping_repository.dart';
import 'package:fluttershoppingblocs/simple_bloc_observer.dart';

import 'app.dart';

void main() {
  BlocOverrides.runZoned(
        () => runApp(App(shoppingRepository: ShoppingRepository())),
    blocObserver: SimpleBlocObserver(),
  );
}
