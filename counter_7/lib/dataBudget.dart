import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/form.dart' as form;

class DataBudget extends StatefulWidget {
  const DataBudget({super.key});
  @override
  State<DataBudget> createState() => _DataBudget();
}

class _DataBudget extends State<DataBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
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
                  MaterialPageRoute(builder: (context) => const MyHomePage()),
                );
              },
            ),
            ListTile(
              title: const Text('Tambah Budget'),
              onTap: () {
                // Route menu ke halaman form
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const form.MyFormPage()),
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
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: form.transaksi.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text(form.transaksi[index]['judul']),
            subtitle: Text("" + form.transaksi[index]['nominal']),
            trailing:
                Text(form.transaksi[index]['kategori'] + " 12 Agustus 2022"),
          ));
        },
      ),
    );
  }
}
