import 'dart:io';

/*
Soal :
  Satpam sebuah gedung membutuhkan sebuah program untuk mengetahui tindakan yang harus dilakukan
  kepada pengguna kendaraan bermotor yang parkir di tempat parkir kampus dan melakukan suatu pelanggaran.
  Berikut pelanggaran yang terjadi :
  1. Kehilangan karcis motor
  2. Tidak membawa STNK

  Berikut tindakan yang akan dilakukan :
  a. Kasus 1 dilakukan sebanyak kurang dari 4 kali, satpam berhak meminta KTP mahasiwa sebagai jaminan
  b. Kasus 1 dilakukan 4 kali atau lebih, satpam berhak meminta denda sebesar 10000 per-karcis
  c. Kasus 2 terjadi, mahasiswa diminta untuk pulang dan mengambil STNK terlebih dahulu

  Bantulah satpam Polban untuk menentkan tindakan yang harus dilakukan.

Spesifikasi Input :
  Satu baris berisi bilangan bulat yang menunjukkan nomor kasus dan banyaknya kasus yang terjadi.

Spesifikasi Output :
  Satu baris berisi tindakkan yang harus dilakukan oleh satpam.
*/

void main() {
  stdout.write("Jenis pelanggaran\t: ");
  int? pelanggaran = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan banyaknkya pelanggaran\t: ");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (pelanggaran != null && n != null && pelanggaran > 0  && pelanggaran <= 2) {
    if (pelanggaran == 2) {
      print("Ambil STNK dulu!");
    } else {
      if (n < 4) {
        print("Serahkan KTP Anda!");
      } else {
        print("Bayar Denda 10000!");
      }
    }
  } else {
    print("Input tidak valid.");
  }
}