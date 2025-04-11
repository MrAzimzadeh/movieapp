import 'package:flutter/material.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/pages/detail/detail_page.dart';

class MovieItem extends StatelessWidget {
  const MovieItem({super.key, required this.data});
  final Film data;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return MovieDetailPage(
              filmId: data.id,
              director: '${data.director}, ${data.actors}',
            );
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Image.network(
              data.photoUrl,
              width: 100,
              height: 140,
              fit: BoxFit.cover,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                data.title,
                style: TextStyle(
                fontSize: 16, 
                fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
      ),
    );
  }
}
