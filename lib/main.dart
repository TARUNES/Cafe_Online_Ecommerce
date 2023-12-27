import 'package:e_commerce/features/bloc/auth_bloc/auth_bloc.dart';
import 'package:e_commerce/features/bloc/beverages_bloc/beverages_bloc.dart';
import 'package:e_commerce/features/bloc/payment_bloc/payment_bloc.dart';

import 'package:e_commerce/features/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<PaymentBloc>(create: (context) => PaymentBloc()),
        BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
        BlocProvider<BeveragesBloc>(create: (context) => BeveragesBloc()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Coffee',
        home: SplashScreen(),
      ),
    );
  }
}
