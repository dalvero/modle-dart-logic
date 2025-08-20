import 'dart:io';

/*
Soal :
  Menghitung Volume tabung jika diketahui jari-jarinya.
  Rumus: V = π × R2 x t, dengan V menunjukkan volume tabung,
  R menunjukkan jari-jari alas tabung, t menunjukkan tinggi tabung,
  dan π bernilai 3,14.

Spesifikasi Input :
  Satu baris berisi bilangan riil R (0 < R ≤ 100) dan bilangan riil t  (0 < t ≤ 100)

Spesifikasi Output :
  Satu baris berisi volume tabung dengan jari-jari R dan tinggi t
  yang menjadi input, dengan dua angka di belakang koma.
*/

void main(){
  print("Diketahui nilai PHI 3,14");
  stdout.write("Masukan nilai jari-jari\t: ");
  double? r = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan nilai tinggi\t: ");
  double? t = double.tryParse(stdin.readLineSync() ?? '');

  if (r != null && t != null && r > 0  && r <= 100 && t > 0 && t <= 100) {
    double volTabung = 3.14 * r * r * t;
    print(volTabung.toStringAsFixed(2));
  } else {
    print("Input tidak valid");
  }
}