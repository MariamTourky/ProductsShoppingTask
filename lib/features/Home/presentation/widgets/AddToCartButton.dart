import 'package:flutter/material.dart';

class AddToCartButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.add_circle),
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
