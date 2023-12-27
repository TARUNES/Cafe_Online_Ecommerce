part of 'beverages_bloc.dart';

@immutable
sealed class BeveragesState {}

final class BeveragesInitial extends BeveragesState {}

class BeveragesLoading extends BeveragesState {}

class BeveragesError extends BeveragesState {
  final String message;

  BeveragesError({required this.message});
}

class BeveragesSuccess extends BeveragesState {
  final List<Product> products;

  BeveragesSuccess({required this.products});
}
