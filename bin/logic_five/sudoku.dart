import 'dart:io';

/*
Soal :
  Buatlah program untuk memeriksa apakah sebuah blok yang ada di permainan sudoku valid atau tidak.
  Blok tersebut dinyatakan valid jika setiap angka hanya muncul satu kali (unik). Sudoku merupakan
  sebuah permainan blok 3x3, dimana setiap kotak berisikan angka antara 1 hingga 9 dan tidak boleh
  ada angka yang berulang.

Spesifikasi Input :
  Tiga baris berisi elemen-elemen dari blok sudoku, di mana setiap elemen merupakan bilangan bulat
  yang dipisahkan oleh spasi dalam satu barisnya.

Spesifikasi Output :
  Satu baris berisi “valid” jika blok sudoku valid, atau “tidak valid” jika blok sudoku tidak valid.
*/

void main() {  
  List<int> blockNumbers = [];

  print('Masukkan 3 baris angka untuk blok Sudoku (pisahkan dengan spasi):');
  
  for (int i = 0; i < 3; i++) {
    stdout.write('Baris ${i + 1}: ');
    String? input = stdin.readLineSync()?.trim();
    
    if (input == null || input.isEmpty) {
      print('Input tidak boleh kosong.');
      return;
    }
    
    // MEMISAHKAN Srting BERDASARKAN SPASI DAN MENCOBA MENGUBAHNYA MENJADI Integer
    List<String> inputValues = input.split(' ');
    for (String val in inputValues) {
      int? number = int.tryParse(val);
      if (number != null) {
        blockNumbers.add(number);
      }
    }
  }

  // VALIDASI  
  // BLOK VALID JIKA MEMILIKI 9 ANGKA DAN SEMUA ANGKA UNIK DARI 1-9
  if (blockNumbers.length != 9) {
    print("tidak valid");
    return;
  }
    
  // MENGGUNAKAN Set UNTUK MEMERIKSA KEUNIKAN ANGKA
  Set<int> uniqueNumbers = blockNumbers.toSet();
  
  // LOGIKA VALIDASI  
  // 1. MEMRIKSA APAKAH JUMLAH ANGKA UNIK ADALAH 9
  // 2. MEMRIKSA APAKAH SEMUA ANGKA BERADA DALAM RENTANG 1 HINGGA 9  
  bool isValid = true;
  if (uniqueNumbers.length != 9) {
    isValid = false;
  }
    
  // MEMRIKSA JIKA ADA ANGKA DI LUAR RENTANG 1-9
  for (int number in blockNumbers) {
    if (number < 1 || number > 9) {
      isValid = false;
      break;
    }
  }
  
  // MENCETAK HASIL AKHIR BERDASARKAN VALIDASI
  if (isValid) {
    print("valid");
  } else {
    print("tidak valid");
  }
}
