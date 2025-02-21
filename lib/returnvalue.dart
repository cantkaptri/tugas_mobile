class Person {
  String name = "Guest";
  String? addres;
  final String country = "Indonesia";

  // Konstruktor harus memiliki nama yang sama dengan kelas
  Person(String paramName, String paramAddres) {
    name = paramName;
    addres = paramAddres;
  }
}

void main() {
  var person = Person("Acaa", "Jember"); 
  print("Name: ${person.name}, Address: ${person.addres}, Country: ${person.country}");
}
