import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/pages/home/widget/movie_item.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, required this.query});

  final String query;
  final dio = Dio();

  Future<List<Film>> getHttp() async {
    try {
      final response = await dio.get('https://freetestapi.com/api/v1/movies?search=$query');
      List<Film> result =
          (response.data as List).map((e) => Film.fromMap(e)).toList();
      return result;
    } catch (e) {
      throw Exception('Server Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Film>>(
      future: getHttp(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          Fluttertoast.showToast(msg: 'Error: ${snapshot.error}');
          return const Center(child: Text('Error occurred'));
        } else if (snapshot.hasData && snapshot.data!.isNotEmpty) {
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final data = snapshot.data![index];
              return MovieItem(data: data);
            },
          );
        } else {
          return const Center(child: Text('Benzer aradiginiz film tapilmadi'));
        }
      },
    );
  }
}
