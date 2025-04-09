import 'package:flutter/material.dart';
import 'package:movieapp/model/film/film.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.data});
  final Film data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12, left: 5, right: 5, bottom: 18),
      child: Image.network(
        data.photoUrl,
        width: 120,
        fit: BoxFit.cover,
        key: ValueKey(data.title),
      ),
    );
  }
}
