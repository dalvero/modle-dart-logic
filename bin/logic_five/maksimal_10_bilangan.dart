import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk menentukan bilangan terbesar dari sepuluh bilangan
  yang ada di dalam array 1 dimensi bertipe integer.

Spesifikasi Input :
  Satu baris berisi 10 buah bilangan integer.

Spesifikasi Output :
  Satu baris berisi bilangan bulat yang menyatakan nilai maksimal dari array tersebut.
*/

void main(){
  // LIST
  List<int> datas = [];

  print("Masukan 10 angka\t: ");
  for (var i = 0; i < 10; i++) {
    stdout.write("Angka ke-${i + 1}: ");
    int? data = int.tryParse(stdin.readLineSync() ?? '');
    if (data != null) {
      datas.add(data);
    }
  }

  datas.sort();
  print("Bilangan maksimal adalah ${datas[datas.length - 1]}");


}