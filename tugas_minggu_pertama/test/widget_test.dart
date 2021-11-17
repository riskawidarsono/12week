// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.
void main() {
  final data = <int>[
    3,
    18,
    45,
    16,
    2,
    5,
    7,
    9,
    10,
    1,
    16,
    11,
    4,
    8,
    11,
    16,
    32,
    56
  ];
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
  for (int i = 0; i < data.length; i++) {
    for (int j = 0; j < data.length - 1; j++) {
      if (data[j] > data[j + 1]) {
        int num = data[j];
        data[j] = data[j + 1];
        data[j + 1] = num;
      }
    }
  }
  return data;
}

nilaiBesarkeKecil(List<int> data) {
  for (int i = 0; i < data.length; i++) {
    for (int j = 0; j < data.length - 1; j++) {
      if (data[j] < data[j + 1]) {
        int num = data[j];
        data[j] = data[j + 1];
        data[j + 1] = num;
      }
    }
  }
  return data;
}

nilaiMean(List<int> data) {
  int total = 0;
  double hasil = 0;

  for (int i = 0; i < data.length; i++) {
    total += data[i];
  }

  hasil = total / data.length;
  return hasil;
}

nilaiMedian(List<int> data) {
  List<int> filterAngka = nilaiKecilkeBesar(data);
  int panjangData = data.length;

  if (panjangData % 2 == 0) {
    return (filterAngka[(panjangData ~/ 2).toInt()] +
            filterAngka[(panjangData / 2 - 1).toInt()]) /
        2;
  } else {
    return filterAngka[(panjangData ~/ 2).toInt()];
  }
}

nilaiModus(List<int> data) {
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

  return hasil;
}
