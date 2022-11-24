import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist_data.dart';

Future<List<Mywatchlist>> fetchToDo() async {
  var url = Uri.parse('https://pbptugas2.herokuapp.com/mywatchlist/json');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Mywatchlist> watchlist = [];
  for (var d in data) {
    if (d != null) {
      watchlist.add(Mywatchlist.fromJson(d));
    }
  }

  return watchlist;
}
