import 'dart:io';

/*
Soal :
  Menghitung Jumlah Luas N buah Lingkaran yang identik jika diketahui jari-jarinya.
  Gunakan Rumus: L = π × R2 , dengan L menunjukkan luas lingkaran, R menunjukkan jari-jari
  lingkaran, dan π bernilai 3,14.

Spesifikasi Input :
  Satu baris berisi bilangan riil R (0 < R ≤ 100) dan bilangan bulat N  (0 < N ≤ 50)

Spesifikasi Output :
  Satu baris berisi jumlah luas N-lingkaran dengan jari-jari R dan sebanyak N yang menjadi input,
  dengan dua angka di belakang koma.
*/

void main(){
  // INPUT
  stdout.write("Masukan jari-jari lingkaran\t: ");
  double? r = double.tryParse(stdin.readLineSync() ?? '');
  stdout.write("Masukan jumlah lingkaran\t: ");
  double? n = double.tryParse(stdin.readLineSync() ?? '');

  // VALIDASI
  if (r != null && n != null && r > 0 && r <= 100 && n > 0 && n <= 50) {
    double luasLingkaran = 3.14 * r * r;
    double totalLuas = luasLingkaran * n;
    print(totalLuas.toStringAsFixed(2));
  } else {
    print("Input tidak valid.");
  }


}