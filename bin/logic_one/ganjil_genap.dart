import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk menentukan apakah suatu bilangan termasuk
  bilangan ganjil atau genap.

Spesifikasi Input :
  Satu baris berisi bilangan bulat X (0 < X < 100).

Spesifikasi Output :
  Satu baris berisi “ganjil” (tanpa tanda petik) jika X merupakan bilangan ganjil,
  atau “genap” jika X merupakan bilangan genap.
*/

void main(){
  stdout.write("Masukan bilangan sembarang\t: ");
  int x = int.tryParse(stdin.readLineSync()?.trim() ?? '0' ) ?? 0;

  if (x > 0 && x < 100) {
    if (x % 2 == 0) {
      print("genap");
    } else {
      print("ganjil");
    }
  } else {
    print("Input tidak valid.");
  }
}