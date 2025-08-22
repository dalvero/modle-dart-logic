import 'dart:io';

/*
Soal :
  Buatlah program untuk mengurutkan tiga data integer yang dimasukkan secara
  descending (dari besar ke kecil).

Spesifikasi Input :
  Satu baris berisi tiga buah bilangan bulat. Masing-masing bilangan bulat memiliki
  jangkauan nilai -300 ≤ data ≤ 300.

Spesifikasi Output :
  Satu baris berisi tiga buah bilangan bulat yang sudah terurut secara
  descending, dipisahkan oleh satu spasi.
*/

void main(){
  List<int> datas = [];
  
  // INPUT
  print("Masukan 3 data acak :");
  for (var i = 0; i < 3; i++) {
    stdout.write("Masukan data ke-${i+1} : ");
    int? data = int.tryParse(stdin.readLineSync() ?? '');
    if (data != null && data >= -300 && data <= 300) {
      datas.add(data);
    } else {
      print("Data diluar jangkauan, silahkan ulangi.");
      return;
    }
  }    
  
  datas.sort((a, b) => b.compareTo(a));    
  for (var i = 0; i < datas.length; i++) {
    print(datas[i]);
  }

}