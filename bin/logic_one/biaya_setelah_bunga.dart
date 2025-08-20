import 'dart:io';

/*
Soal :
  Buatlah (lengkapilah) program di bawah ini, untuk menghitung total biaya yang harus dibayar,
  jika diketahui biaya awal dan persen bunga pembayarannya.

Spesifikasi Input :
  Baris pertama berisi sebuah bilangan riil yang menyatakan biaya awal, di mana biaya awal selalu
  positif dan kurang dari 150000 (0 < biaya awal < 150000). Baris kedua berisi sebuah bilangan riil
  yang menyatakan bunga dalam persen (0 ≤ bunga ≤ 100) .

Spesifikasi Output :
  Satu baris berisi total biaya yang harus dibayar dengan dua angka di belakang koma.
*/

void main() {
  // INPUT USER
  stdout.write("Masukan biaya awal anda\t: ");
  int biayaAwal = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;
  stdout.write("Masukan besar bunga\t: ");
  int bunga = int.tryParse(stdin.readLineSync()?.trim() ?? '-1') ?? -1;

  // VALIDASI
  if (biayaAwal < 0 || bunga < 0) {
    print("Biaya awal/Bunga tidak bisa kurang dari 0.");
    return;
  }

  if (biayaAwal > 0 && biayaAwal < 150000 && bunga >= 0 && bunga <= 100){
    double total = (biayaAwal + (biayaAwal * (bunga / 100)));
    // PRINT FORMAT
    print(total.toStringAsFixed(2));
  } else {
    print("Input tidak valid.");
  }
}