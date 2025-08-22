import 'dart:io';

/*
Soal :
  Buatlah program untuk membuat pola seperti pada contoh input dan contoh output.

Spesifikasi Input :
  Satu baris berisi satu buah bilangan bulat N (1 ≤ N ≤ 10).

Spesifikasi Output :
  Pola berukuran N × N dengan pola seperti pada contoh output.

For example:
  Input	Result
  5
  *
  * *
  * * *
  * * * *
  * * * * *
*/

void main(){
  // INPUT
  stdout.write("Masukan panjang pola\t: ");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n != null && n <= 10 && n >= 1) {
    for (var i = 0; i <= n; i++) {
      for (var j = 0; j < i; j++) {
        stdout.write("* ");
      }
      print("");
    }
  }
}