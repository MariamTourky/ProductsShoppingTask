import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProductImageSection extends StatefulWidget {
  final String? imageUrl;

  const ProductImageSection({Key? key, required this.imageUrl}) : super(key: key);

  @override
  _ProductImageSectionState createState() => _ProductImageSectionState();
}

class _ProductImageSectionState extends State<ProductImageSection> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: CachedNetworkImage(
            imageUrl: widget.imageUrl ?? '',
            height: 130,
            width: double.infinity,
            fit: BoxFit.cover,
            placeholder: (context, url) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        Positioned(
          top: 8,
          right: 8,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white, // White background
              shape: BoxShape.circle, // Circular shape
            ),
            child: IconButton(
              icon: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border, // Toggle the icon
                color: isFavorite ? Colors.red : Colors.blueGrey,    // Toggle the color
                size: 25, // Icon size
              ),
              onPressed: () {
                setState(() {
                  isFavorite = !isFavorite; // Toggle the favorite state
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
