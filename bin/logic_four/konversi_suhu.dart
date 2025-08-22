import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk mengonversi suhu dalam satuan Reamur menjadi suhu dalam satuan Kelvin.
  Suhu °K = °R × 1.25 + 273

Spesifikasi Input :
  Satu baris berisi suhu dalam satuan Reamur dengan format bilangan riil, dengan jangkauan -273 ≤ suhu
  dalam Reamur ≤ 80.

Spesifikasi Output :
  Satu baris berisi nilai suhu dalam satuan Kelvin dengan dua angka di belakang koma.
*/

void main() {
  // INPUT 
  stdout.write("Masukan suhu dalam C : ");
  double? suhu = double.tryParse(stdin.readLineSync() ?? '');

  if (suhu != null && suhu >= -273 && suhu <= 80) {
    double kelvin = suhu * 1.25 + 273;
    print(kelvin.toStringAsFixed(2));
  } else {
    print("Input tidak valid.");
  }
}