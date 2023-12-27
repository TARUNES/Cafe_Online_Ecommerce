part of 'beverages_bloc.dart';

@immutable
sealed class BeveragesEvent {}

class CoffeeFetch extends BeveragesEvent {}

class BakeryFetch extends BeveragesEvent {}

class DrinksFetch extends BeveragesEvent {}

class SignaturedFetch extends BeveragesEvent {}
