import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk menghitung total biaya parkir motor atau mobil dengan ketentuan berikut:
  1. Mobil dikenakan tarif Rp2.000 untuk satu jam pertama dan Rp1.000 untuk setiap satu jam berikutnya;
  2. Motor dikenakan tarif Rp1.000 untuk satu jam pertama dan Rp5.00 untuk setiap satu jam berikutnya.

Spesifikasi Input :
  1. Baris pertama berisi angka 1 jika kendaraan yang parkir adalah mobil, atau angka 2 jika kendaraan yang
  parkir adalah motor.

  2. Baris kedua berisi bilangan bulat berupa lama waktu parkir dalam satuan jam (0 < lama parkir ≤ 24).

Spesifikasi Output :
  Satu baris berisi bilangan bulat berupa total biaya parkir yang harus dibayarkan dalam rupiah
*/

void main(){
  // INPUT USER
  stdout.write("Masukan jenis kendaraan (1 -> Mobil, 2 -> Motor): ");
  int? kendaraan = int.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan lama parkir (jam) : ");
  int? durasi = int.tryParse(stdin.readLineSync() ?? '');

  // VALIDASI
  if (kendaraan != null && durasi != null && durasi > 0 && durasi <= 24) {
    int totalBiaya = 0;
    if (kendaraan == 1) { // KONDISI MOTOR
      if (durasi > 1) {
        totalBiaya = 2000 + (durasi - 1) * 1000;
      } else {
        totalBiaya = 2000 * durasi;
      }
    } else if (kendaraan == 2){
      if (durasi > 1) {
        totalBiaya = 1000 + (durasi - 1) * 500;
      } else {
        totalBiaya = 1000 * durasi;
      }
    } else {
      print("Jenis kendaraan tidak ditemukan");
    }
    print(totalBiaya);
  } else {
    print("Input tidak valid.");
  }

}