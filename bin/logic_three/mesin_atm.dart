import 'dart:io';

/*
Soal :
  Eva sedang jalan-jalan di luar negeri dan ingin mengambil  x dolar Amerika dari sebuah ATM.
  Mesin ATM hanya mau mengeluarkan uang dalam kelipatan 5 USD. Untuk setiap transaksi, Eva akan
  dikenakan transaksi 0.5 USD.
  Buatlah program untuk menghitung saldo rekening Eva setelah dilakukan transaksi.

Spesifikasi Input :
  Satu baris berisi bilangan bulat jumlah uang yang akan diambil Eva dan bilangan riil yang
  berisi saldo di rekening Eva dengan 2 angka dibelakang koma.

Spesifikasi Output :
  Satu baris saldo rekening Eva setelah dikenakan transaksi, dengan dua angka dibelakang koma.
  Jika saldo rekening Eva tidak cukup untuk melakukan transaksi, keluarkan saldo rekening semula.
*/

void main() {
  // INPUT
  stdout.write("Masukan saldo yang ingin ditarik : ");
  double? tarikSaldo = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan jumlah saldo : ");
  double? totalSaldo = double.tryParse(stdin.readLineSync() ?? '');

  if (tarikSaldo != null && totalSaldo != null) {
    double sisaSaldo = 0;
    if (tarikSaldo % 5 == 0 && tarikSaldo < (totalSaldo - 0.5)) {
      sisaSaldo = totalSaldo - tarikSaldo - 0.5;
    } else {
      sisaSaldo = totalSaldo;
    }
    print(sisaSaldo.toStringAsFixed(2));
  } else {
    print("Input tidak valid");
  }
}