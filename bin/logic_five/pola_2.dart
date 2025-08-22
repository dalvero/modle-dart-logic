import 'dart:io';

/*
Soal :
  Buatlah program untuk membuat pola seperti pada contoh input dan contoh output.

Spesifikasi Input :
  Satu baris berisi satu buah bilangan bulat N (1 ≤ N ≤ 10).

Spesifikasi Output :
  Pola berukuran N × N dengan pola seperti pada contoh output.
  Input   : 5
  Result  :   1
              2 1
              4 2 1
              8 4 2 1
              16 8 4 2 1
*/

void main(){
  // INPUT
  // INPUT
  stdout.write("Masukan panjang pola\t: ");
  int? n = int.tryParse(stdin.readLineSync() ?? '');

  if (n != null && n <= 10 && n >= 1) {    
    for (int i = 1; i <= n; i++) {    
    int nilai = 1;
    if (i > 1) {      
      // MENGGUNAKAN Math.pow UNTUK PERHITUNGAN PANGKAT
      // Math.pow MENGEMBALIKAN DOUBLE, JADI HARUS DI CAST      
      nilai = (1 << (i - 1));
    }
    
    String baris = '';
        
    for (int j = 1; j <= i; j++) {
      baris += '$nilai ';
      nilai = nilai ~/ 2; // MENGGUNAKAN ~/ UNTUK PEMBAGIAN INTEGER
    }
    
    print(baris.trim());
  }
  }
}