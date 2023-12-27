part of 'payment_bloc.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}

final class UpdatedCount extends PaymentState {
  final int quantity;

  UpdatedCount(this.quantity);
}
