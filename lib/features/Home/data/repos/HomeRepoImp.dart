import 'package:shoes_shopping/features/Home/data/models/ProductModel.dart';

import '../../../../core/errors/ServerErrors.dart';
import '../../../../core/utilies/ApiService.dart';
import 'HomeRepo.dart';
import 'package:dartz/dartz.dart';


class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<ProductModel>>> fetchProducts() async {
    try {
      final products = await apiService.fetchProducts();
      return right(products);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}