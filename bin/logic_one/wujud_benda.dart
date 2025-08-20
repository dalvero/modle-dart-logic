import 'dart:io';

/*
Soal :
  Suatu benda dikatakan berwujud cair jika suhunya berada di kisaran 0 s.d. 100 °C.
  Selain itu, benda dikatakan berwujud non cair. Buatlah sebuah program untuk menentukan
  wujud suatu benda jika diketahui suhunya.

Spesifikasi Input :
  Satu baris berisi bilangan riil yang menunjukkan suhu benda (-150 ≤ suhu ≤ 150).

Spesifikasi Output :
  Satu baris berisi “berwujud cair” (tanpa tanda petik) jika benda berwujud cair,
  atau berisi “berwujud non cair” jika benda berwujud non cair.
*/

void main(){
  stdout.write("Masukan besaran suhu\t: ");
  String? inputSuhu = stdin.readLineSync()?.trim();

  int? suhu = int.tryParse(inputSuhu ?? '');
  if (suhu != null) {
    if (suhu >= 0 && suhu < 100) {
      print("berwujud cair");
    } else {
      print("berwujud non cair");
    }
  } else {
    print("Input tidak valid.");
    return;
  }

}