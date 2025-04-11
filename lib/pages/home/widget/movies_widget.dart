import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:movieapp/model/film/film.dart';
import 'package:movieapp/pages/home/widget/movie_item.dart';

/// Todo @GularaGulmammadova @ElmarSalimov
class MoviesWidget extends StatelessWidget {
  MoviesWidget({super.key, this.films, required this.url, this.limit});
  final String? url;
  final int? limit;

  /// Api Sorgulari ucun
  final dio = Dio();

  /// Api Sorgularindan gelecek data
  Future<List<Film>>? films;

  /// Request Logic
  /// Api sorgusu ucun istifade olunur
  /// [url] - API url
  /// [getHttp] - API sorgusu
  /// fUTURE Return Edir
  Future<List<Film>> getHttp() async {
    try {
      final response = await dio.get('https://freetestapi.com/api/v1/$url',
          queryParameters: {'limit': limit});
      // from Molder
      List<Film> result =
          (response.data as List).map((e) => Film.fromMap(e)).toList();

      return result;
    } catch (e) {
      throw Exception('Server Error');
    }
  }

  @override
  Widget build(BuildContext context) {
    films = getHttp();
    return FutureBuilder<List<Film>>(
      future: films,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: CircularProgressIndicator.adaptive(
                backgroundColor: Colors.amber,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.red,
                ),
              ),
            ),
          );
        } else if (snapshot.hasError) {
          Fluttertoast.showToast(
            msg: 'Server Error',
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            backgroundColor: Colors.red,
            textColor: Colors.white,
            fontSize: 16.0,
          );
          return Center(
            child: Text(
              '${snapshot.error}',
              style: TextStyle(color: Colors.red),
            ),
          );
        } else if (snapshot.connectionState == ConnectionState.done) {
          return SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                var data = snapshot.data![index];
                return MovieItem(data: data);
              },
            ),
          );
        } else {
          return SizedBox.shrink();
        }
      },
    );
  }
}