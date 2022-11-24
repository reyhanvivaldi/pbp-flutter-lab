import 'package:counter_7/page/mywatchlistDetail.dart';
import 'package:counter_7/page/form.dart';
import 'package:counter_7/page/dataBudget.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/utils/fetch.dart';

class MyWatchlist extends StatefulWidget {
  const MyWatchlist({Key? key}) : super(key: key);

  @override
  State<MyWatchlist> createState() => _MyWatchlistState();
}

class _MyWatchlistState extends State<MyWatchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Watchlist'),
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
        body: FutureBuilder(
            future: fetchToDo(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watchlist :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyWatchlistDetail(
                                  title: 'Detail',
                                  watchListItem: snapshot.data![index],
                                ),
                              ));
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color:
                                    "${snapshot.data![index].fields.watched}" ==
                                            "Watched.TRUE"
                                        ? Colors.green
                                        : Colors.red,
                              ),
                              boxShadow: const [
                                BoxShadow(color: Colors.black, blurRadius: 1.0)
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${snapshot.data![index].fields.title}",
                                style: const TextStyle(
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Checkbox(
                                  value:
                                      "${snapshot.data![index].fields.watched}" ==
                                              "Watched.TRUE"
                                          ? true
                                          : false,
                                  onChanged: (val) {
                                    setState(() {
                                      snapshot.data![index].fields.watched =
                                          "${snapshot.data![index].fields.watched}" ==
                                                  "Watched.TRUE"
                                              ? "False"
                                              : "True";
                                    });
                                  }),
                              const SizedBox(height: 10),
                            ],
                          ),
                        )),
                  );
                }
              }
            }));
  }
}
