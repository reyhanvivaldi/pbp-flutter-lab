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
<hr>
2022 | reyv
<hr>
<br>
