import 'package:flutter/material.dart';
import '../../../../core/utilies/Styles.dart';
import '../../data/models/ProductModel.dart';
import 'AddToCartButton.dart';
import 'ProductImageSection.dart';
import 'ProductPriceSection.dart';
import 'ProductRatingSection.dart';

class ProductTile extends StatelessWidget {
  final ProductModel product;

  const ProductTile({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      child: Card(
        shadowColor: Colors.grey.shade300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImageSection(imageUrl: product.image),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                product.title ?? 'Product Title',
                style: Styles.titleStyle,
                maxLines: 2,
              ),
            ),
            ProductPriceSection(price: product.price),
            ProductRatingSection(rating: product.rating),
            AddToCartButton(),
          ],
        ),
      ),
    );
  }
}
