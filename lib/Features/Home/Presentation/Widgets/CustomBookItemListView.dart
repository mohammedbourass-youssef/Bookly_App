import 'package:bookly_app/Features/Home/Data/Models/book_model/item.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:redacted/redacted.dart';

class CustomBookItemListView extends StatelessWidget {
  const CustomBookItemListView({
    super.key,
    this.onTap,
    required this.isLoading,
    required this.bookmdel,
  });
  final VoidCallback? onTap;
  final bool isLoading;
  final Item bookmdel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child:
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                image: isLoading
                    ? null
                    : DecorationImage(
                        image: CachedNetworkImageProvider(
                          bookmdel.volumeInfo?.imageLinks?.thumbnail ?? '',
                        ),
                        fit: BoxFit.fill,
                      ),
                borderRadius: BorderRadius.circular(12),
              ),
            ).redacted(
              context: context,
              redact: isLoading,
              configuration: RedactedConfiguration(
                animationDuration: const Duration(milliseconds: 800), //default
              ),
            ),
      ),
    );
  }
}
