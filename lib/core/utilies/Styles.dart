import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Styles {
  static const textStyle20 = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle titleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    overflow: TextOverflow.ellipsis,
  );

  static const TextStyle priceStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.blueGrey,
  );

  static const TextStyle discountPriceStyle = TextStyle(
    decoration: TextDecoration.lineThrough,
    color: Colors.grey,
    fontSize: 12,
  );

  static const TextStyle reviewStyle = TextStyle(
    fontSize: 12,
    color: Colors.grey,
  );

  static const TextStyle ratingStyle = TextStyle(
    color: Colors.black,
    fontSize: 12,
  );
}
