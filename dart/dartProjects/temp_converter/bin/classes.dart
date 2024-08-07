import 'dart:mirrors';

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print("Munch Munch");
  }

  @override
  void move() {
    print("Glide glide");
  }

  void layEggs() {
    print("Plop Plop");
  }
}

void main() {
  Animal platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  //platypus.layEggs();
  platypus.move();
  print(
      'I am a platypus that the has inherited animal traits from the animal class!');
}
