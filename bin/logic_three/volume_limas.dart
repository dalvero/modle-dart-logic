import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk menghitung volume limas dengan alas segi empat.
  Rumus : V = 1 / 3 × P × L × T, dengan V menunjukkan volume, P menunjukkan panjang
  alas limas, L menunjukkan lebar alas limas, dan T menunjukkan tinggi limas.

Spesifikasi Input :
  Baris pertama berisi bilangan riil P. Baris kedua berisi bilangan riil L.
  Baris ketiga berisi bilangan riil T.
  Jangkauan nilai ketiga variabel tersebut adalah 0 < P, L, T < 20.

Spesifikasi Output :
  Satu baris berisi volume limas dengan enam angka di belakang koma.
*/

void main(){
  // INPUT USER
  stdout.write("Masukan panjang\t: ");
  double? panjang = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan lebar\t: ");
  double? lebar = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan tinggi\t: ");
  double? tinggi = double.tryParse(stdin.readLineSync() ?? '');

  // VALIDASI
  if (panjang != null && lebar != null && tinggi != null && panjang > 0 && panjang < 20 &&
      lebar > 0 && lebar < 20 && tinggi > 0 && tinggi < 20) {
    double volume = (panjang * lebar * tinggi) / 3;
    print(volume.toStringAsFixed(6));
  } else {
    print("Input tidak valid");
  }
}