
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/errors/ServerErrors.dart';
import '../../data/models/ProductModel.dart';
import '../../data/repos/HomeRepo.dart';
import 'ProductStates.dart';

class ProductCubit extends Cubit<ProductState> {
  final HomeRepo _homeRepo;

  ProductCubit(this._homeRepo) : super(ProductInitial());

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Server error occurred. Please try again later.';
      default:
        return 'An unknown error occurred.';
    }
  }

  void fetchProducts() async {
    try {
      emit(ProductLoading());

      Either<Failure, List<ProductModel>> result = await _homeRepo
          .fetchProducts();
      result.fold(
            (failure) =>
            emit(ProductError(message: _mapFailureToMessage(failure))),
            (products) => emit(ProductLoaded(products: products)),
      );
    } catch (e) {
      emit(ProductError(message: 'An unexpected error occurred: $e'));
    }
  }
}