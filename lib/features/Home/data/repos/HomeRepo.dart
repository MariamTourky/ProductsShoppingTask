import 'package:dartz/dartz.dart';
import 'package:shoes_shopping/features/Home/data/models/ProductModel.dart';

import '../../../../core/errors/ServerErrors.dart';

abstract class HomeRepo{
  Future<Either<Failure, List<ProductModel>>> fetchProducts();}