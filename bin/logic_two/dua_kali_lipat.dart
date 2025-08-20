import 'dart:io';

/*
Soal :
  Buatlah program yang menampilkan bilangan yang tepat dua kali lipat dari
  bilangan yang berasal dari inputan pengguna.

Spesifikasi Input :
  Satu baris berisi sebuah bilangan bulat X (0 ≤ X ≤ 100).

Spesifikasi Output :
  Satu baris berisi sebuah bilangan bulat yang tepat dua kali lebih besar dari X.
*/

void main(){
  int? x = int.tryParse(stdin.readLineSync() ?? '');
  if (x != null) {
    print(x * 2);
  } else {
    print("Input tidak valid");
  }

}