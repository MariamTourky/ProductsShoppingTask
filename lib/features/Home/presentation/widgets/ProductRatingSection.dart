import 'package:flutter/material.dart';
import '../../../../core/utilies/Styles.dart';
import '../../data/models/RatingModel.dart';

class ProductRatingSection extends StatelessWidget {
  final Rating? rating;

  const ProductRatingSection({Key? key, required this.rating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Row(
        children: [
          Text(
            'Review (${rating?.rate?.toStringAsFixed(1) ?? '0.0'})',
            style: Styles.reviewStyle,
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.star,
            color: Colors.yellow.shade700,
            size: 16,
          ),
          Text(
            rating?.rate?.toStringAsFixed(1) ?? '0.0',
            style: Styles.ratingStyle,
          ),
        ],
      ),
    );
  }
}
