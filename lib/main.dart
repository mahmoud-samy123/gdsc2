// // // task3:
// // // 1-b
// // // 2-d
// // // 3-b
// // // 4-c
// // // 5-a
// // import 'dart:io';
// //
// // class Laptop {
// //   String brand;
// //   String model;
// //   int ram;
// //
// //   Laptop(this.brand, this.model, this.ram);
// //
// //   double calculatePrice() {
// //
// //     double basePrice = 500.0;
// //     double ramPricePerGB = 50.0;
// //     double brandMultiplier = 1.0;
// //
// //
// //     if (brand.toLowerCase() == 'dell') {
// //       brandMultiplier = 1.2;
// //     } else if (brand.toLowerCase() == 'hp') {
// //       brandMultiplier = 1.1;
// //     } else if (brand.toLowerCase() == 'lenovo') {
// //       brandMultiplier = 1.15;
// //     }
// //
// //
// //     double ramPrice = ram * ramPricePerGB;
// //
// //
// //     double totalPrice = basePrice * brandMultiplier + ramPrice;
// //
// //     return totalPrice;
// //   }
// // }
// //
// // void main() {
// //   print("Welcome to the Laptop Shop System!");
// //   print("Please provide the following information:");
// //
// //   stdout.write("Enter the brand of the laptop: ");
// //   String brand = stdin.readLineSync()!;
// //
// //   stdout.write("Enter the model of the laptop: ");
// //   String model = stdin.readLineSync()!;
// //
// //   stdout.write("Enter the RAM of the laptop (in GB): ");
// //   int ram = int.parse(stdin.readLineSync()!);
// //
// //   Laptop laptop = Laptop(brand, model, ram);
// //   double price = laptop.calculatePrice();
// //
// //   print("\nThank you for providing the information.");
// //   print("Based on the features provided, the price of the laptop is: \$$price");
// // }
//
//
// class BankAccount {
//   int accountNumber;
//   String accountHolderName;
//   double balance;
//
//   // Constructor
//   BankAccount(this.accountNumber, this.accountHolderName, this.balance);
//
//   // Method to deposit money
//   void deposit(double amount) {
//     if (amount > 0) {
//       balance += amount;
//       print('Deposited $amount. New balance: \$${balance.toStringAsFixed(2)}');
//     } else {
//       print('Invalid deposit amount');
//     }
//   }
//
//   // Method to withdraw money
//   void withdraw(double amount) {
//     if (amount > 0 && amount <= balance) {
//       balance -= amount;
//       print('Withdrawn $amount. New balance: \$${balance.toStringAsFixed(2)}');
//     } else {
//       print('Insufficient funds or invalid withdrawal amount');
//     }
//   }
//
//   // Method to print the account details
//   void printDetails() {
//     print('Account Number: $accountNumber');
//     print('Account Holder Name: $accountHolderName');
//     print('Balance: \$${balance.toStringAsFixed(2)}');
//   }
// }
//
// void main() {
//   // Creating two bank account objects
//   var account1 = BankAccount(123456, 'John Doe', 1000.0);
//   var account2 = BankAccount(789012, 'Jane Smith', 500.0);
//
//   // Performing series of deposits and withdrawals
//   account1.deposit(500.0);
//   account1.withdraw(200.0);
//   account1.withdraw(1500.0); // This should fail due to insufficient funds
//
//   account2.deposit(1000.0);
//   account2.withdraw(200.0);
//   account2.withdraw(800.0);
//
//   // Printing final balances
//   print('\nFinal balances:');
//   print('Account 1:');
//   account1.printDetails();
//   print('\nAccount 2:');
//   account2.printDetails();
// }
// // Base Employee class
// class Employee {
//   String name;
//   int employeeID;
//   double salary;
//   String department;
//
//   Employee(this.name, this.employeeID, this.salary, this.department);
//
//   void work() {
//     print('$name is working.');
//   }
// }
//
// // Subclass for Managers
// class Manager extends Employee {
//   String departmentManaged;
//
//   Manager(String name, int employeeID, double salary, String department, this.departmentManaged)
//       : super(name, employeeID, salary, department);
//
//   void conductMeeting() {
//     print('$name is conducting a meeting.');
//   }
// }
//
// // Subclass for Workers
// class Worker extends Employee {
//   String supervisor;
//
//   Worker(String name, int employeeID, double salary, String department, this.supervisor)
//       : super(name, employeeID, salary, department);
//
//   void completeTask() {
//     print('$name has completed a task.');
//   }
// }
//
// void main() {
//   // Creating manager and worker objects
//   var manager = Manager('John Doe', 1001, 60000, 'Engineering', 'Engineering');
//   var worker = Worker('Jane Smith', 2002, 40000, 'Engineering', 'John Doe');
//
//   // Using common methods
//   manager.work();
//   worker.work();
//
//   // Using specific methods
//   manager.conductMeeting();
//   worker.completeTask();
// }
// // Base Shape class
// abstract class Shape {
//   double calculateArea();
//   double calculatePerimeter();
// }
//
// // Rectangle subclass
// class Rectangle extends Shape {
//   double length;
//   double width;
//
//   Rectangle(this.length, this.width);
//
//   @override
//   double calculateArea() {
//     return length * width;
//   }
//
//   @override
//   double calculatePerimeter() {
//     return 2 * (length + width);
//   }
// }
//
// // Circle subclass
// class Circle extends Shape {
//   double radius;
//
//   Circle(this.radius);
//
//   @override
//   double calculateArea() {
//     return 3.14 * radius * radius;
//   }
//
//   @override
//   double calculatePerimeter() {
//     return 2 * 3.14 * radius;
//   }
// }
//
// // Triangle subclass
// class Triangle extends Shape {
//   double side1;
//   double side2;
//   double side3;
//
//   Triangle(this.side1, this.side2, this.side3);
//
//   @override
//   double calculateArea() {
//     // Use Heron's formula to calculate area of a triangle
//     double s = (side1 + side2 + side3) / 2;
//     return (s * (s - side1) * (s - side2) * (s - side3)).sqrt();
//   }
//
//   @override
//   double calculatePerimeter() {
//     return side1 + side2 + side3;
//   }
// }
//
// void main() {
//   // Create shapes
//   var rectangle = Rectangle(5, 3);
//   var circle = Circle(4);
//   var triangle = Triangle(3, 4, 5);
//
//   // Calculate and print areas and perimeters
//   print('Rectangle: Area = ${rectangle.calculateArea()}, Perimeter = ${rectangle.calculatePerimeter()}');
//   print('Circle: Area = ${circle.calculateArea()}, Perimeter = ${circle.calculatePerimeter()}');
//   print('Triangle: Area = ${triangle.calculateArea()}, Perimeter = ${triangle.calculatePerimeter()}');
// }