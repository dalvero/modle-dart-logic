import 'dart:io';

/*
Soal :
  Buatlah sebuah program untuk mengubah suatu kalimat ke dalam bentuk “alay”.
  Ketentuannya adalah:
  Huruf Diubah menjadi
  A atau a = 4
  I atau i = 1
  Z atau z = 2
  E atau e = 3
  G atau g = 6
  J atau j = 7
  B atau b = 8

Spesifikasi Input :
  Satu baris berisi string/array karakter dengan panjang maksimal 50 karakter.

Spesifikasi Output :
  Satu baris berisi string yang sudah berada dalam bentuk “alay”.
*/

void main() {
  // MENGGUNAKAN CONST MAP AGAR LEBIH MUDAH DAN EFISIEN KARENA ADA NILA BY KEY NYA
  const Map<String, String> alayMap = {
    "a": "4",
    "i": "1",
    "z": "2",
    "e": "3",
    "g": "6",
    "j": "7",
    "b": "8",
  };

  // INPUT USER
  stdout.write("Masukkan pesan anda\t: ");
  String kalAwal = stdin.readLineSync()?.trim() ?? '';
  
  // VALIDASI
  if (kalAwal.length > 50) {
    print("Panjang pesan maksimal 50 karakter.");
    return;
  }
  
  String kalAkhir = ''; 

  // MENGUBAH STRING INPUT MENJADI LIST OF KARAKTER UNTUK LOOPING SATU PER SATU
  for (var karakter in kalAwal.runes) {
    var char = String.fromCharCode(karakter);
    var lowerCaseChar = char.toLowerCase();
    
    // VALIDASI APAKAH ADA CHAR YANG SAMA DI MAP
    if (alayMap.containsKey(lowerCaseChar)) {    
      // JIKA ADA, TAMBAHKAN NILAI DARI MAP KE STRING HASIL
      kalAkhir += alayMap[lowerCaseChar]!;
    } else {      
      kalAkhir += char;
    }
  }
  
  print("\nHasil alay: $kalAkhir");
}
