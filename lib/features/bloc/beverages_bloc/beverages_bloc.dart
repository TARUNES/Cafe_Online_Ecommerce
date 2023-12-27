import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_commerce/features/data/repository/products_repo.dart';
import 'package:e_commerce/features/models/product_list_model.dart';
import 'package:meta/meta.dart';

part 'beverages_event.dart';
part 'beverages_state.dart';

ProductRepo productRepo = new ProductRepo();

class BeveragesBloc extends Bloc<BeveragesEvent, BeveragesState> {
  BeveragesBloc() : super(BeveragesInitial()) {
    on<CoffeeFetch>(coffee_fetch);
    on<BakeryFetch>(bakery_fetch);
    on<DrinksFetch>(drinks_fetch);
    on<SignaturedFetch>(signatured_fetch);
  }

  FutureOr<void> signatured_fetch(
      SignaturedFetch event, Emitter<BeveragesState> emit) async {
    try {
      emit(BeveragesLoading());
      final data = await productRepo.getSignatured();
      // print(data);
      emit(BeveragesSuccess(products: data));
    } catch (e) {
      emit(BeveragesError(message: 'Error fetching coffee products: $e'));
    }
  }

  FutureOr<void> drinks_fetch(
      DrinksFetch event, Emitter<BeveragesState> emit) async {
    try {
      emit(BeveragesLoading());
      final data = await productRepo.getDrinks();
      // print(data);
      emit(BeveragesSuccess(products: data));
    } catch (e) {
      emit(BeveragesError(message: 'Error fetching coffee products: $e'));
    }
  }

  FutureOr<void> bakery_fetch(
      BakeryFetch event, Emitter<BeveragesState> emit) async {
    try {
      emit(BeveragesLoading());
      final data = await productRepo.getBakery();
      // print(data);
      emit(BeveragesSuccess(products: data));
    } catch (e) {
      emit(BeveragesError(message: 'Error fetching coffee products: $e'));
    }
  }

  FutureOr<void> coffee_fetch(
      CoffeeFetch event, Emitter<BeveragesState> emit) async {
    try {
      emit(BeveragesLoading());
      final data = await productRepo.getCoffee();
      // print(data);
      emit(BeveragesSuccess(products: data));
    } catch (e) {
      emit(BeveragesError(message: 'Error fetching coffee products: $e'));
    }
  }
}
