import 'package:flutter/material.dart';

import '../../../../core/utilies/Styles.dart';

class ProductPriceSection extends StatelessWidget {
  final double? price;

  const ProductPriceSection({Key? key, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Text(
            'EGP ${price!.toStringAsFixed(2)}',
            style: Styles.priceStyle,
          ),
          const SizedBox(width: 8),
          Text(
            'EGP ${(price! * 1.2).toStringAsFixed(2)}',
            style: Styles.discountPriceStyle,
          ),
        ],
      ),
    );
  }
}
