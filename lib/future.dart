import 'dart:async';
// Fungsi untuk membuat kopi dengan Future
Future<String> buatKopi(String jenis) async {
  print("Memproses pesanan kopi $jenis...");

  // Future State: Uncompleted (sedang diproses)
  return Future.delayed(Duration(seconds: 3), () {
    // Simulasi stok habis untuk jenis "Espresso"
    if (jenis == "Espresso") {
      throw Exception("Stok kopi habis");
    }
    return "Kopi $jenis siap";
  });
}
// Fungsi utama
void main() async {
  print("Selamat datang di Kedai Kopi");

  // Future State: Uncompleted (proses pemesanan)
  Future<String> pesanan = buatKopi("Latte");
  // Future Method: menangani hasil jika sukses
  pesanan.then((result) {
    print("Pesanan berhasil: $result"); // Future Value: hasil jika sukses
  })
  // Future Catch: menangani error jika gagal
  .catchError((error) {
    print("Pesanan gagal: $error");
  })
  // Future Finally: tetap dijalankan setelah Future selesai
  .whenComplete(() {
    print("Terima kasih sudah memesan");
  });
  print("Mohon tunggu, pesanan sedang dibuat...");
}
