import 'dart:convert';
import 'dart:developer';

import 'package:demo_movie/Utils/Dataconstants.dart';
import 'package:http/http.dart';

class ApiResponse {
  movie() async {
    var link = 'http://www.omdbapi.com/?i=tt3896198&apikey=c4033450&s=Movies';
    var response = await get(link);
    log("DATA ${response.body}");
    var data = jsonDecode(response.body);
    Dataconstants.movieModel.updateMovieModel(data);
  }
}
