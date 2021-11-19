// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:collection/collection.dart';
import 'package:stats/stats.dart';

void main() {
  final data = <int>[3, 18, 45, 16, 2, 5, 7, 9, 10, 1, 16, 11, 4, 8, 11, 16, 32, 56];
  print(data);
  print('1. Mengurutkan dari nilai terkecil ke terbesar ');
  print(nilaiKecilkeBesar(data));
  print('2. Mengurutkan dari nilai terbesar ke terkecil');
  print(nilaiBesarkeKecil(data));
  print('3. Mencari rata-rata dari data-data tersebut (mean)');
  print(nilaiMean(data));
  print('4. Mencari nilai tengah (median)');
  print(nilaiMedian(data));
  print('5. Mencari nilai yang sering muncul (modus)');
  print(nilaiModus(data));
}

nilaiKecilkeBesar(List<int> data) {
  // output & logic sudah sesuai dan benar
  // for (int i = 0; i < data.length; i++) {
  //   for (int j = 0; j < data.length - 1; j++) {
  //     if (data[j] > data[j + 1]) {
  //       int num = data[j];
  //       data[j] = data[j + 1];
  //       data[j + 1] = num;
  //     }
  //   }
  // }
  // return data;

  // alternatif
  // bisa manfaatin fungsi sort yaa
  data.sort();
  return data;
}

nilaiBesarkeKecil(List<int> data) {
  // output & logic sudah sesuai dan benar
  // for (int i = 0; i < data.length; i++) {
  //   for (int j = 0; j < data.length - 1; j++) {
  //     if (data[j] < data[j + 1]) {
  //       int num = data[j];
  //       data[j] = data[j + 1];
  //       data[j + 1] = num;
  //     }
  //   }
  // }
  // return data;

  // alternatif
  // bisa manfaatin fungsi sort juga & reversed yaa
  data.sort();
  return data.reversed.toList();
}

nilaiMean(List<int> data) {
  // output & logic sudah sesuai dan benar
  // int total = 0;
  // double hasil = 0;

  // for (int i = 0; i < data.length; i++) {
  //   total += data[i];
  // }

  // hasil = total / data.length;
  // return hasil;

  // alternatif 1
  // kalau for loop dan tidak membutuhkan index bisa pakai in pada for loop
  // var sum = 0;
  // for (int i in data) {
  //   sum += i;
  // }
  // return sum / data.length;

  // alternatif 2
  // bisa menggunakan package stats
  return Stats.fromData(data).average;
}

nilaiMedian(List<int> data) {
  // output & logic sudah sesuai dan benar, membedakan jumlah data genap / ganjil & pemanfaatan ~ sudah bagus
  // List<int> filterAngka = nilaiKecilkeBesar(data);
  // int panjangData = data.length;

  // if (panjangData % 2 == 0) {
  //   return (filterAngka[(panjangData ~/ 2).toInt()] + filterAngka[(panjangData / 2 - 1).toInt()]) / 2;
  // } else {
  //   return filterAngka[(panjangData ~/ 2).toInt()];
  // }

  // alternatif
  // bisa menggunakan package stats
  return Stats.fromData(data).median;
}

nilaiModus(List<int> data) {
  // output & logic sudah sesuai dan benar, tapi ada yg kurang pada definisi modus itu sendiri
  // modus adalah nilai yg PALING banyak muncul -> ini artinya cuma 1 data
  // maka jika data array memiliki 2 nilai yang sama banyak, bisa di bilang tidak memiliki modus
  List<int> filterAngka = nilaiKecilkeBesar(data);
  int panjangData = data.length;
  List<int> total = [];
  List<int> modus = [];
  int a = 1;
  int b = 0;

  for (int i = 0; i < panjangData; i++) {
    total.insert(i, 0);
    for (int j = 0; j < panjangData; j++) {
      if (filterAngka[i] == filterAngka[j]) {
        total[i]++;
      }
    }
  }
  for (int i = 0; i < panjangData; i++) {
    if (total[i] > a) {
      a = total[i];
    }
  }
  for (int i = 0; i < panjangData; i++) {
    if (total[i] == a) {
      modus.insert(b, filterAngka[i]);
    }
  }

  modus.insert(modus.length, 50);

  List<int> hasil = [];
  int c = 0;

  for (int i = 0; i < modus.length - 1; i++) {
    if (modus[i] != modus[i + 1]) {
      hasil.insert(c, modus[i]);
      c++;
    }
  }

  hasil.sort();

  // tambahkan ini
  if (hasil.length == 1) {
    return hasil;
  } else {
    return "TIDAK ADA MODUS";
  }

  // alternatif lain
  // jangan lupa di buka comment fungsi modus()
  // return modus(data);
}


/*
modus(List<int> data) {
  data.sort();

  List<Map<int, int>> dataMap = [];
  List<Map<int, int>> fixDataMap = [];

  for (int i = 0; i < data.length; i++) {
    int total = 0;
    for (int j = 0; j < data.length; j++) {
      if (data[i] == data[j]) {
        total++;
      }
    }
    dataMap.add({data[i]: total});
  }

  for (int i = 0; i < dataMap.length; i++) {
    if (i > 0) {
      if (const DeepCollectionEquality().equals(dataMap[i], dataMap[i - 1])) {
        continue;
      } else {
        fixDataMap.add(dataMap[i]);
      }
    } else {
      fixDataMap.add(dataMap[i]);
    }
  }

  print("Data Map dengan banyaknya data");
  print(fixDataMap);

  List<int> keyData = [];
  List<int> valueData = [];

  for (int i = 0; i < fixDataMap.length; i++) {
    keyData.add(fixDataMap[i].keys.first);
    valueData.add(fixDataMap[i].values.first);
  }

  print("\nExtract Data Map");
  print("Nilai : $keyData");
  print("Banyak : $valueData");
  print("\n--------------------------\nKESIMPULAN\n");

  int maksimalData = valueData[0];

  for (var i = 0; i < valueData.length; i++) {
    if (valueData[i] > maksimalData) {
      maksimalData = valueData[i];
    }
  }

  // print(maksimalData);

  int totalMaksimalData = 0;
  for (var item in valueData) {
    if (item == maksimalData) {
      totalMaksimalData++;
    }
  }

  maksimalData = valueData[0];
  int indexMaksimalData = 0;

  if (totalMaksimalData != 1) {
    return "TIDAK ADA MODUS";
  } else {
    for (var i = 0; i < valueData.length; i++) {
      if (valueData[i] > maksimalData) {
        maksimalData = valueData[i];
        indexMaksimalData = i;
      }
    }

    return "Nilai yang sering muncul : ${keyData[indexMaksimalData]}\nSebanyak : ${valueData[indexMaksimalData]} x";
  }
}
*/