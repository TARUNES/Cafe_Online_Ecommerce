import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'payment_event.dart';
part 'payment_state.dart';

class PaymentBloc extends Bloc<PaymentEvent, PaymentState> {
  int counter = 0;
  PaymentBloc() : super(PaymentInitial()) {
    on<IncCount>(incrementCount);
    on<DecCount>(decrementCount);
  }

  FutureOr<void> incrementCount(IncCount event, Emitter<PaymentState> emit) {
    counter = counter + 1;
    emit(UpdatedCount(counter));
  }

  FutureOr<void> decrementCount(DecCount event, Emitter<PaymentState> emit) {
    counter = counter - 1;
    emit(UpdatedCount(counter));
  }
}
