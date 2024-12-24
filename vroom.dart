// Car class to represent each car object.
class Car {
  String name;
  double price;

  // Constructor to initialize the car's name and price.
  Car(this.name, this.price);

  // Method to change the price of the car.
  void changePrice(double newPrice) {
    price = newPrice;
    print('The price of the car "$name" has been updated to: \$${price.toStringAsFixed(2)}');
  }
}

// Person class to represent a person who can buy and sell cars.
class Person {
  String name;
  List<Car> ownedCars = []; // List to store owned cars.
  double moneyLeft;

  // Constructor to initialize the person's name and available money.
  Person(this.name, this.moneyLeft);

  // Method to buy a car.
  void buyCar(Car car) {
    if (moneyLeft >= car.price) {
      ownedCars.add(car);
      moneyLeft -= car.price;
      print('$name bought the car "$car.name" for \$${car.price.toStringAsFixed(2)}');
    } else {
      print('$name does not have enough money to buy the car "$car.name".');
    }
  }

  // Method to sell a car.
  void sellCar(Car car) {
    if (ownedCars.contains(car)) {
      ownedCars.remove(car);
      moneyLeft += car.price;
      print('$name sold the car "$car.name" for \$${car.price.toStringAsFixed(2)}');
    } else {
      print('$name does not own the car "$car.name" to sell.');
    }
  }

  // Method to show all owned cars.
  void showOwnedCars() {
    if (ownedCars.isEmpty) {
      print('$name does not own any cars.');
    } else {
      print('$name owns the following cars:');
      for (var car in ownedCars) {
        print('- ${car.name} (\$${car.price.toStringAsFixed(2)})');
      }
    }
  }
}

void main() {
  // Create some car instances.
  Car car1 = Car('Tesla Model S', 80000);
  Car car2 = Car('BMW X5', 60000);
  Car car3 = Car('Audi A6', 50000);

  // Create a person instance (name changed to Snith).
  Person snith = Person('Snith', 100000);

  // Display initial state.
  snith.showOwnedCars(); // Snith doesn't own any cars initially.

  // Snith buys a car (Tesla Model S).
  snith.buyCar(car1);

  // Snith buys another car (BMW X5).
  snith.buyCar(car2);

  // Display Snith's owned cars after purchase.
  snith.showOwnedCars();

  // Snith tries to buy a car he can't afford (Audi A6).
  snith.buyCar(car3); // This will fail due to insufficient funds.

  // Snith sells the Tesla Model S.
  snith.sellCar(car1);

  // Display Snith's owned cars after selling.
  snith.showOwnedCars();

  // Changing the price of the Audi A6.
  car3.changePrice(48000); // Audi A6 price reduced.

  // Snith buys the Audi A6 after price reduction.
  snith.buyCar(car3);

  // Display Snith's final owned cars.
  snith.showOwnedCars();
}
