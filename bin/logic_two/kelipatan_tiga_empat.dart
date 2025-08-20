import 'dart:io';

/*
Soal :
  Menentukan apakah suatu bilangan merupakan kelipatan 3 dan 4 atau tidak

Spesifikasi Input :
  Satu baris berisi bilangan bulat X (0 < X < 100).

Spesifikasi Output :
  Satu baris berisi nilai variabel cek.
*/

void main(){
  double? x = double.tryParse(stdin.readLineSync() ?? '');
  if (x != null && x > 0  && x < 100) {
    if (x % 3 == 0 && x % 4 == 0) {
      print(1);
    } else {
      print(0);
    }
  } else {
    print("Input tidak valid");
  }
}