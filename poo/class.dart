void main() {
  Person newPerson = Person();
  newPerson.setidentity("Elie", "Ruvinga", "Black", "1.65");
  print(newPerson.getSelfperson());
}

class Person {
  String name = "";
  String lastName = "";
  String color = "";
  String taille = "";

  Person() {
    print("Constructor view");
  }

  void setidentity(
      String firstName, String lastName, String color, String length) {
    this.name = firstName;
    this.lastName = lastName;
    this.color = color;
    this.taille = length;
  }

  String getSelfperson() {
    return "${this.name} ${this.lastName} de couleur ${this.color} avec une taille de ${this.taille} m";
  }
}

class variables {
  late int entier;
}
