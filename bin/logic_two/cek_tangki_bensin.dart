import 'dart:io';

/*
Soal :
  Seseorang akan membeli bensin premium (Rp. 7600) sebanyak uang yang dia miliki.
  Setiap kendaraan memilki kapasitas bensin yang berbeda-beda. Tangki bensin kendaraan
  kemungkinan tidak cukup menanmpung bensin yang dibeli.
  Buatlah sebuah program untuk menghitung jumlah bensin yang dibeli dengan uang tertentu,
  dan tentukan apakah kapasitas tangki mencukupi atau tidak.

Spesifikasi Input :
  Satu baris berisi bilangan bulat yang menunjukkan uang yang dibayar (7600 ≤ uang ≤ 76000)
  dan bilangan riil yang menunjukkan kapasitas bensin kendaraan ( 1 ≤ kapasitas ≤ 10 ).

Spesifikasi Output :
  Satu baris berisi jumlah bensin yang dibeli dengan dua angka dibelakang koma dan
  keterangan tangki bensin yang tidak mencukupi apabilan jumlah bensin yang dibeli melebih
  kapasitas tangki.
*/

void main(){
  stdout.write("Masukan uang yang dibayarkan\t: ");
  double? uang = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan kapasitas bensin\t: ");
  double? tangki = double.tryParse(stdin.readLineSync() ?? '');

  if (uang != null && tangki != null && uang >= 7600 && uang <= 76000 && tangki >= 1 && tangki <= 10) {
    double totalBensin = uang / 7600;
    if (totalBensin > tangki) {
      print(totalBensin.toStringAsFixed(2));
      print("Bensin Berlebih");
    } else {
      print(totalBensin.toStringAsFixed(2));
    }
  } else {
    print("Input tidak valid");
  }
}