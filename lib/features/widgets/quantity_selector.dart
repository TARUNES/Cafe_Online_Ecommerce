import 'package:e_commerce/features/bloc/payment_bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class QuantitySelector extends StatelessWidget {
  const QuantitySelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PaymentBloc, PaymentState>(
      builder: (context, state) {
        if (state is PaymentInitial) {
          return Container(
            width: 120,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<PaymentBloc>().add(IncCount());
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.2, color: Colors.grey),
                      color: Colors.white38,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                Text(
                  '0',
                  style: GoogleFonts.sora(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PaymentBloc>().add(DecCount());
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.2, color: Colors.grey),
                      color: Colors.white38,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        if (state is UpdatedCount) {
          return Container(
            width: 120,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    context.read<PaymentBloc>().add(IncCount());
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.2, color: Colors.grey),
                      color: Colors.white38,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.add,
                        size: 16,
                      ),
                    ),
                  ),
                ),
                Text(
                  state.quantity.toString(),
                  style: GoogleFonts.sora(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<PaymentBloc>().add(DecCount());
                  },
                  child: Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 0.2, color: Colors.grey),
                      color: Colors.white38,
                    ),
                    child: Center(
                      child: Icon(
                        Icons.remove,
                        size: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }
        return Container();
      },
    );
  }
}
