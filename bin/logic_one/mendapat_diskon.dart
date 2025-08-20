import 'dart:io';
/*
Soal :
    Buatlah program untuk menentukan jumlah uang yang harus dibayar
    apabila suatu barang dengan harga tertentu dan jumlah tertentu dapat
    mendapat potongan sebesar 15 % dari  total harga apabila jumlah barang
    yang dibeli adalah kelipatan 3 dan 4.

Spesifikasi Input :
    Sebuah bilangan riil yang merupakan harga barang
    ( 10000 ≤ hargaBarang ≤ 1000000 ) dan sebuah bilangan bulat yang merupakan
    jumlah barang  ( 1 ≤ jumlahBarang ≤ 100 )

Spesifikasi Output :
    Satu baris berisi total harga barang yang harus dibayar dengan dua angka dibelakang koma.
*/

void main(){
  // INPUT USER
  stdout.write("Masukan harga barang anda\t: ");
  double hargaBarang = double.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;
  stdout.write("Masukan jumlah barang anda\t: ");
  double jumlahBarang = double.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  // VALIDASI
  if (hargaBarang < 0 || jumlahBarang < 0) {
    print("Input tidak valid.");
    return;
  }

  if (hargaBarang >= 10000 && hargaBarang <= 1000000 && jumlahBarang >= 1 && jumlahBarang <= 100) {
    // KELIPATAN 3 DAN 4 DISKON 15%
    double total = hargaBarang * jumlahBarang;
    if (jumlahBarang % 3 == 0 && jumlahBarang % 4 == 0) {
      total = (hargaBarang * jumlahBarang) - ((hargaBarang * jumlahBarang) * 15 / 100);
    }
    print(total.toStringAsFixed(2));
  } else {
    print("Input tidak valid.");
  }
}