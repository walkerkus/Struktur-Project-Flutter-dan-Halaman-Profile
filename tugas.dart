void main() {

  String nama = "Muhammad Syahid Kusasih";
  int tugas = 65;
  int uts = 75;
  int uas = 80;

  double nilaiAkhir = (tugas + uts + uas) / 3;

  print("Nama: $nama");
  print("Nilai akhir: $nilaiAkhir");

  if (nilaiAkhir >= 75) {
    print("Status: Lulus");
  } else {
    print("Status: Tidak Lulus");
  }

  String pesan = nilaiAkhir >= 60 ? "Nilai cukup aman" : "Perlu belajar lagi";
  print("Pesan: $pesan");

}