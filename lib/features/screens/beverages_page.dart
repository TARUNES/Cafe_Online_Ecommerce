import 'package:e_commerce/features/bloc/beverages_bloc/beverages_bloc.dart';
import 'package:e_commerce/features/models/product_list_model.dart';
import 'package:e_commerce/features/widgets/back_arrow.dart';
import 'package:e_commerce/features/widgets/beverage_page_card.dart';
import 'package:e_commerce/features/widgets/home_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class BeveragesPage extends StatefulWidget {
  final String title;
  const BeveragesPage({super.key, required this.title});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {
  @override
  void initState() {
    if (widget.title == 'Coffee') {
      BlocProvider.of<BeveragesBloc>(context).add(CoffeeFetch());
    } else if (widget.title == 'Drinks') {
      BlocProvider.of<BeveragesBloc>(context).add(DrinksFetch());
    } else if (widget.title == 'Signatured') {
      BlocProvider.of<BeveragesBloc>(context).add(SignaturedFetch());
    } else if (widget.title == 'Bakery') {
      BlocProvider.of<BeveragesBloc>(context).add(BakeryFetch());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 180, 156, 1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: BackArrow(),
        centerTitle: true,
        title: Text(widget.title,
            style: GoogleFonts.oswald(
                letterSpacing: 1, fontSize: 20, color: Colors.black)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            BlocBuilder<BeveragesBloc, BeveragesState>(
              builder: (context, state) {
                if (state is BeveragesSuccess) {
                  List<Product> products = state.products;

                  return Container(
                    height: MediaQuery.of(context).size.width,
                    width: MediaQuery.of(context).size.width,
                    child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 10),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        final product = products[index];

                        return BevrageCard(products: product);
                      },
                    ),
                  );
                } else if (state is BeveragesError) {
                  print(state.message);
                } else if (state is BeveragesLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return Container();
                }
                return Container();
              },
            ),
          ],
        ),
      ),
    );
  }
}
