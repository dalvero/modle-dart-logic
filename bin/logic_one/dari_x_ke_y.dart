import 'dart:io';

/*
Soal :
  Tampilkan semua bilangan bulat dari X hingga  Y, masing-masing dalam satu baris.

Spesifikasi Input :
  Satu baris berisi dua buah bilangan bulat X dan Y (0 ≤ X ≤ Y ≤ 100).

Spesifikasi Output :
  Seluruh bilangan bulat dari X hingga  Y, masing-masing dalam satu baris.
*/

void main() {
  // INPUT USER
  stdout.write("Masukan nilai x (nilai awal)\t: ");
  // VALIDASI KONDISI UNTUK MENGATASI NULL EXCEPTION
  int x = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1; 

  stdout.write("Masukan nilai y (nilai akhir)\t: ");
  // VALIDASI KONDISI UNTUK MENGATASI NULL EXCEPTION
  int y = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  if (x < 0 || y > 100 || x > y) {
    print("Nilai tidak valid. Pastikan 0 ≤ X ≤ Y ≤ 100.");
    return;
  }

  // OUTPUT
  for (int i = x; i <= y; i++) {
    print(i);
  }
}