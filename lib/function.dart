void main() {
  // 1. Recursive Function: Membalikkan kata
  String reverseString(String text) {
    if (text.isEmpty) return "";
    return text[text.length - 1] + reverseString(text.substring(0, text.length - 1));
  }

  // 2. Anonymous Function: Menyaring nama yang dimulai dengan huruf "N"
  List<String> names = ["Nopal", "Aca", "Farhan", "Firman", "Adit"];
  var filteredNames = names.where((name) => name.startsWith("N")).toList();

  // 3. Higher-Order Function: Mengubah daftar nama menjadi huruf kecil
  void processNames(List<String> list, Function(String) operation) {
    for (var name in list) {
      print("Nama setelah diproses: ${operation(name)}");
    }
  }

  // 4. Inner Function: Untuk mencetak hasil
  void printResults() {
    print("Kata yang dibalik: ${reverseString("nopal")}");
    print("Nama yang dimulai dengan 'N': $filteredNames");

    // Menggunakan higher-order function
    processNames(names, (name) => name.toLowerCase());
  }

  // 5. Menjalankan semua fungsi dari main
  printResults();
}
