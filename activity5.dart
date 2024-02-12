//Design a Super class for vehicles, then create several child classes of the super class. Include attributes/properties and methods specific to each subclass of vehicle.


// Superclass: Vehicle
Class Vehicle {
  String brand;
  Int year;
  Double price;

  Vehicle(this.brand, this.year, this.price);

  Void accelerate() {
    Print(“The vehicle is accelerating.”);
  }

  Void brake() {
    Print(“The vehicle is braking.”);
  }
}

// Subclass: Car
Class Car extends Vehicle {
  Int numberOfSeats;

  Car(String brand, int year, double price, this.numberOfSeats)
      : super(brand, year, price);

  Void honkHorn() {
    Print(“Beep beep!”);
  }
}

// Subclass: Motorcycle
Class Motorcycle extends Vehicle {
  String type;

  Motorcycle(String brand, int year, double price, this.type)
      : super(brand, year, price);

  Void wheelie() {
    Print(“Performing a wheelie!”);
  }
}

// Subclass: Truck
Class Truck extends Vehicle {
  Double cargoCapacity;

  Truck(String brand, int year, double price, this.cargoCapacity)
      : super(brand, year, price);

  Void loadCargo() {
    Print(“Loading cargo…”);
  }
}

Void main() {
  Car car = Car(“Toyota”, 2022, 25000, 5);
  Car.accelerate();
  Car.brake();
  Car.honkHorn();
  Print(“Number of seats: ${car.numberOfSeats}”);

  Motorcycle motorcycle = Motorcycle(“Honda”, 2020, 15000, “Sport”);
  Motorcycle.accelerate();
  Motorcycle.brake();
  Motorcycle.wheelie();
  Print(“Type: ${motorcycle.type}”);

  Truck truck = Truck(“Ford”, 2019, 40000, 5000);
  Truck.accelerate();
  Truck.brake();
  Truck.loadCargo();
  Print(“Cargo capacity: ${truck.cargoCapacity} lbs”);
}