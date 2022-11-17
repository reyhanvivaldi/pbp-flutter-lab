# Assignment 7
## Stateless widget dan stateful widget
Stateless widget adalah widget yang tidak pernah berubah, dalam kata lain, statis.

Stateful widget adalah widget yang dinamis, widget bisa berubah tampilan sesuai dengan event yang dipicu oleh interaksi pengguna atau saat menerima data.

Perbedaan dari stateless dan stateful widget:
1. Stateful widget harus melakukan render ulang saat widget berubah, sedangkan stateless widget tidak.
2. Stateful widget bersifat dinamis, sedangkan stateless bersifat statis.
3. Stateful bisa menggunakan setState(), sedangkan stateless tidak.

Referensi: Dokumentasi Flutter


## Widget yang dipakai
1. `Column()`: untuk mengatur elemen secara vertikal,
2. `Row()`: untuk mengatur elemen secara horizontal,
3. `Container()`: untuk membungkus satu atau lebih widget,
4. `FloatingActionButton()`: untuk membuat floating button,
5. `Text()`: untuk menampilkan teks atau string,


## Fungsi setState()
Fungsi dari `setState()` adalah untuk meng-update widget yang dipicu oleh interaksi pengguna atau saat menerima data. Dalam tugas ini, variable `_counter` akan bertambah saat user klik tombol `+`, dan berkurang saat user klik tombol `-`.

## Const vs Final
`const` adalah keyword untuk men-declare bahwa data dari variable dikomputasi saat compile time, sedangkan `final` dikomputasi saat runtime. 

## Implementasi Checklist Assignment 7
1. Membuat fungsi baru yaitu `_decrementCounter` untuk melakukan decrement pada counter,
2. Memberi conditional di dalam children widget `Column()` pada body dan mengatur tampilan sesuai kondisi: "GENAP" merah saat counter bernilai genap atau "GANJIL" biru saat counter bernilai ganjil.
3. Menambahkan widget `Container()` untuk menyimpan widget `Row()` yang berisi `FloatingActionButton()` tambah dan kurang.
4. Menambahkan conditional untuk mengatur `FloatingActionButton()` agar tidak menampilkan tombol `-` saat counter bernilai 0.

<br>

# Assigment 8
## Perbedaan `Navigator.push` dan `Navigator.pushReplacement`
Ibarat sebuah stack, `Navigator.push` mem-push sebuah route baru sehingga berada di top of stack, top of stack inilah yang muncul di layar pengguna. Pada `Navigator.push`, route sebelumnya tetap ada (tidak terhapus).

`Navigator.pushReplacement` hampir sama dengan `Navigator.push`. Hanya saja, `pushReplacement` mereplace route pada top of stack dengan route baru, sehingga route lama terhapus.

## Widget yang dipakai beserta fungsinya
1. `Column()`: mengatur elemen secara vertikal,
2. `Row()`: mengatur elemen secara horizontal,
3. `Container()`: membungkus satu atau lebih widget,
4. `FloatingActionButton()`: membuat floating button,
5. `Text()`: menampilkan teks atau string,
6. `Scaffold()`: menyimpan widget-widget dasar yang membentuk struktur visual (seperti APIs) seperti Drawer, SnackBar, dll,
7. `ListTile()`: menampilkan list dan bisa menyimpan widget
8. `AppBar()`: menampilkan widget toolbar seperti judul, dsb
9. `Drawer()`: menavigasi beberapa route pada aplikasi
10. `Card()`: menampilkan data dalam bentuk card
11. `TextFormField()`: menampilkan form yang menerima input text dari user
12. `DropdownButton()`: menampilkan item yang dipilih dari himpunan item

## Jenis event pada Flutter
1. `onLongPress()`
2. `onHover()`
3. `onFieldSubmitted()`
4. `onChanged()`
5. `onSaved()`
6. `onEditingComplete()`
7. `onTap()`

## Cara kerja `Navigator` dalam "mengganti" halaman dari aplikasi Flutter
`Navigator` bekerja layaknya sebuah stack, yaitu halaman-halaman ditumpuk dan yang ditampilkan ke user adalah halaman pada top of stack. Untuk "mengganti" halaman, bisa gunakan `Navigator.push`, `Navigator.pop`, atau sejenisnya.

## Implementasi checklist
1. Membuat file `form.dart` untuk menampilkan form yang menerima input dari user. Simpan data form pada sebuah Map yang kemudian disimpan pada List.
2. Membuat file `dataBudget.dart` untuk menampilkan data yang dimasukkan oleh user sebelumnya pada form.
3. Memodifikasi `main.dart`, `form.dart`, dan `dataBudget.dart` dengan menambahkan code block drawer agar bisa menavigasi beberapa halaman.


<br>
<hr>
2022 | reyv
<hr>
<br>
