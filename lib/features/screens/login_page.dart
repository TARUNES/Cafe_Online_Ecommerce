import 'package:e_commerce/features/bloc/auth_bloc/auth_bloc.dart';
import 'package:e_commerce/features/screens/home_page.dart';
import 'package:e_commerce/features/screens/nav_page.dart';
import 'package:e_commerce/features/widgets/frosted_glass.dart';
import 'package:e_commerce/features/widgets/search_input.dart';
import 'package:e_commerce/features/widgets/user-cred-input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  final VoidCallback onFlip;
  const LoginPage({super.key, required this.onFlip});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthSucess) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NavPage()));
        } else if (state is AuthError) {
          print(state.message);
        }
      },
      builder: (context, state) {
        if (state is LoadState) {
          return Center(child: CircularProgressIndicator());
        } else {
          return LoginWidget(
              username: username, password: password, onFlip: onFlip);
        }
      },
    );
  }
}

class LoginWidget extends StatelessWidget {
  const LoginWidget({
    super.key,
    required this.username,
    required this.password,
    required this.onFlip,
  });

  final TextEditingController username;
  final TextEditingController password;
  final VoidCallback onFlip;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FrostedGlass(
          height: 430,
          width: 350,
          borderradius: 20,
          child: Container(
            height: 450,
            width: 350,
            padding: EdgeInsets.fromLTRB(15, 40, 15, 20),
            child: Column(
              children: [
                Text('Welcome Back!',
                    style: GoogleFonts.oswald(
                        letterSpacing: 1, fontSize: 25, color: Colors.black87)),
                SizedBox(
                  height: 25,
                ),
                UserInput(
                  icon: Icon(Icons.person),
                  controller: username,
                  hintText: 'Email',
                ),
                SizedBox(
                  height: 15,
                ),
                UserInput(
                  icon: Icon(Icons.password),
                  controller: password,
                  hintText: 'Password',
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    BlocProvider.of<AuthBloc>(context).add(AuthLoginEvent(
                      email: username.text,
                      password: password.text,
                    ));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(129, 41, 4, 0.8),
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                        child: Text(
                      'Login',
                      style: GoogleFonts.sora(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? ',
                      style: GoogleFonts.arimo(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        onFlip();
                      },
                      child: Text(
                        'Sign Up',
                        style: GoogleFonts.arimo(
                            fontSize: 14,
                            color: Color.fromRGBO(129, 41, 4, 1),
                            fontWeight: FontWeight.w600),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}
