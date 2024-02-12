//Create a Dart class that represents a fictional character from a book or movie. Include attributes/properties  for name, age, and a method to introduce the character.

Class FictionalCharacter {
  String name;
  Int age;

  FictionalCharacter (this.name, this.age);

  Void introduce() {
    Print(“Hello, my name is $name and I am $age years old.”);
  }
}

Void main() {
  FictionalCharacter character = FictionalCharacter(“Harry Potter”, 17);
  Character.introduce();
}