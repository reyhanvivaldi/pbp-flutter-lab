import 'package:flutter/material.dart';
import 'package:counter_7/model/mywatchlist_data.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/mywatchlist.dart';

class MyWatchlistDetail extends StatefulWidget {
  const MyWatchlistDetail(
      {super.key, required this.title, required this.watchListItem});
  final String title;
  final Mywatchlist watchListItem;

  @override
  State<MyWatchlistDetail> createState() => _MyWatchlistDetailState();
}

class _MyWatchlistDetailState extends State<MyWatchlistDetail> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail'),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              // Menambahkan clickable menu
              ListTile(
                title: const Text('Counter'),
                onTap: () {
                  // Route menu ke halaman utama
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyApp()),
                  );
                },
              ),
              ListTile(
                title: const Text('Tambah Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const MyFormPage()),
                  );
                },
              ),
              ListTile(
                title: const Text('Data Budget'),
                onTap: () {
                  // Route menu ke halaman form
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const DataBudget()),
                  );
                },
              ),
              ListTile(
                title: const Text('Watchlist'),
                onTap: () {
                  // Route menu ke halaman to do
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MyWatchlist()),
                  );
                },
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Flexible(
                        child: Container(
                          margin: const EdgeInsets.only(bottom: 30, top: 10),
                          child: Text(
                            widget.watchListItem.fields.title,
                            style: const TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text("Release date: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        Text(widget.watchListItem.fields.releaseDate,
                            style: TextStyle(
                              fontSize: 18,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text("Rating: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        Text(
                            '${widget.watchListItem.fields.rating.toDouble()}/5',
                            style: TextStyle(
                              fontSize: 18,
                            ))
                      ],
                    ),
                    Row(
                      children: [
                        Text("Status: ",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            )),
                        Text(
                            "${widget.watchListItem.fields.watched}" ==
                                    "Watched.TRUE"
                                ? "Watched"
                                : "Not watched",
                            style: TextStyle(
                              fontSize: 18,
                            ))
                      ],
                    ),
                    const Text(
                      'Review:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Flexible(
                      child: Text(
                        widget.watchListItem.fields.review,
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(40),
                ),
                child: const Text(
                  'Back',
                ),
              ),
            ],
          ),
        ));
  }
}
