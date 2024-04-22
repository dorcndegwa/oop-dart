import 'dart:io';

abstract class Animal {
  void reproduce();
}

// implementing the interface with a class
class Dog implements Animal {
  String name;
  String breed;

  Dog(this.name, this.breed);

// method reproduce has been overridden  
  @override
  void reproduce() {
    print("Give birth to an offspring");
  }
}

// superclass
class Mammal {
  void makeSound() {
    print("Each mammal makes a different sound");
  }
}

// subclass 
class Human extends Mammal {
  String name;
  int age;
  String department;

  Human(this.name, this.age, this.department);

// makeSound method overrides the method in superclass Mammal
  @override
  void makeSound() {
    print("Human yawns when sleepy or hungry");
  }
}

class FileReader {
  void readDataFromFile(String filePath) {
    try {
      File file = File(filePath);
      List<String> lines = file.readAsLinesSync();
      lines.forEach((line) => print(line));
    } catch (e) {
      print("Error reading file: $e");
    }
  }
}

void main(){
// create an object of class Animal 
var dog = Dog("Rocky", "Golden retriever");
print("${dog.name} is a ${dog.breed}, a popular breed in the country");
dog.reproduce();

var human = Human("Jewel", 20, "IT");
print("${human.name} is a ${human.age} year old working in ${human.department} department");
human.makeSound();

//loop
int age = 1;
 for(age; age<=4; age++);         
    {  
        print(age);     
    }  
}