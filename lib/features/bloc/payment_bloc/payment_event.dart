part of 'payment_bloc.dart';

@immutable
sealed class PaymentEvent {}

class IncCount extends PaymentEvent {}

class DecCount extends PaymentEvent {}
