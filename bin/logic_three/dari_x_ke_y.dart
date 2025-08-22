import 'dart:io';

/*
Soal :
  Dibaca sebuah bilangan bulat X dan Y. Tampilkan  semua bilangan bulat dari X  hingga
  Y dalam satu baris (dipisahkan oleh 1 spasi).

Spesifikasi Input :
  Satu baris berisi dua buah bilangan bulat X dan Y (0 ≤ X ≤ Y ≤ 100), dipisahkan oleh 1 spasi.

Spesifikasi Output :
  Satu baris berisi seluruh bilangan bulat dari X hingga Y, dipisahkan oleh spasi kecuali sebelum bilangan pertama
*/

void main() {
  stdout.write("Masukan bilangan awal\t: ");
  int? x = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan bilangan akhir\t: ");
  int? y = int.tryParse(stdin.readLineSync() ?? '');

  // LOOPING
  if (x != null && y != null && x <= 100 && x >= 0 && y <= 100 && y >= 0) {
    for (var i = x; i <= y; i++) {
      stdout.write("$i ");
    }
  }

}