import 'dart:io';

/*
Soal :
  Buatlah program untuk menghitung jumlah luas 3 buah persegi yang
  memiliki perbandingan sisi R1 : R2 : R3, jika diketahui S sisi persegi ke-1.

Spesifikasi Input :
  Satu baris berisi bilangan bulat R1,R2,R3 yang menunjukkan rasio sisi setiap persegi
  (1 ≤ R1,R2,R3 ≤ 100) dan bilangan riil S  (0 < S ≤ 100)

Spesifikasi Output :
  Satu baris berisi jumlah luas 3 buah persegi dengan perbandingan setiap sisinya
  R1,R2,R3 dan sisi S yang menjadi input, dengan dua angka di belakang koma.
*/

void main(){
  stdout.write("Masukan rasio sisi persegi ke-1\t: ");
  double? a = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan rasio sisi persegi ke-2\t: ");
  double? b = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan rasio sisi persegi ke-3\t: ");
  double? c = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan sisi persegi ke-1\t: ");
  double? d = double.tryParse(stdin.readLineSync() ?? '');

  if (a != null && b != null && c != null && d != null && a >= 1 && a <= 100 && b >= 1 && b <= 100
      && c >= 1 && c <= 100 && d > 0 && d <= 100) {
    double sisiDua = (b / a) * d;
    double sisiTiga = (c / a) * d;
    double totalLuas = (d * d) + (sisiDua * sisiDua) + (sisiTiga * sisiTiga);
    print(totalLuas.toStringAsFixed(2));
  } else {
    print("Input tidak valid");
  }
}
