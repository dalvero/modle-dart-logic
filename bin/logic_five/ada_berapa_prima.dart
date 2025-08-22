import 'dart:io';

/*
Soal :
  Dalam matematika, bilangan prima adalah bilangan asli yang lebih besar dari angka 1,
  yang faktor pembaginya adalah 1 dan bilangan itu sendiri.

  Diketahui sebuah array A dengan 10 elemen, hitunglah ada berapa bilangan prima
  pada array A tersebut.

Spesifikasi Input :
  Satu baris berisi 10 bilangan bulat A1, A2, ..., A10 (0 ≤ Ai ≤ 32.750).

Spesifikasi Output :
  Satu baris berisi bilangan bulat yang menyatakan jumlah kemunculan bilangan prima pada array A.
*/

void main(){
  // LIST
  List<int> datas = [];
  List<int> datasPrima = [];
  print("Masukan 10 angka\t: ");
  for (var i = 0; i < 10; i++) {
    stdout.write("Angka ke-${i + 1}: ");
    int? data = int.tryParse(stdin.readLineSync() ?? '');
    if (data != null) {
      datas.add(data);
    }
  }

  for (var i = 0; i < datas.length; i++) {
    int data = datas[i];
    if (isPrima(data)) {
      datasPrima.add(data);
    }
  }

  print(datasPrima.length);

}

// FUNGSI UNTUK MEMERIKSA ANGKA PRIMA
bool isPrima(int number) {  
  // BILANGAN PRIMA HARUS LEBIH BESAR DARI 1
  if (number <= 1) {
    return false;
  }
    
  // MEMERIKSA PEMBAGIAN DARI 2 HINGGA AKAR KUADRAT DARI ANGKA
  // CONTOH : UNTUK ANGKA 10, HANYA PERLU DICEK HINGGA 3
  for (int i = 2; i <= number / 2; i++) {    
    // JIKA ANGKA DAPAT DIBAGI TANPA SISA, MAKA BUKAN PRIMA
    if (number % i == 0) {
      return false;
    }
  }
    
  // JIKA TIDAK ADA PEMBAGI, MAKA ANGKA TERSEBUT PRIMA
  return true;
}