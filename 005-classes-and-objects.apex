// INTRO TO CLASSES AND OBJECTS

// Before
String employeeName = 'Elaine';
Integer startYear = 2019;
String department = 'Engineering';
Boolean isCurrentEmployee = true;

String employeeName2 = 'George';
Integer startYear2 = 2023;
String department2 = 'Sales';
Boolean isCurrentEmployee2 = true;

String employeeName3 = 'Jerry';
Integer startYear3 = 2017;
String department3 = 'Buiz-Ops';
Boolean isCurrentEmployee3 = true;

String employeeName4 = 'Kraemer';
Integer startYear4 = 2021;
String department4 = 'Human Resources';
Boolean isCurrentEmployee4 = true;

// After

/*
This is where a Class comes in. A class allows developers to create their own custom datatypes and use them just like primitive datatypes.
The class will act as a blueprint. It will instruct Apex on how to create the new custom datatype, called an Object, by defining properties 
and behavior
*/

// Class Definition
// with member variables (properties)
public class Employee {
      String name;
      Integer startYear;
      String department;
      Boolean isCurrentEmployee; 
}


// Outer and Inner Classes
/**************************
A class is either an Outer class (also called Top-Level) or an Inner class.
Outer classes are defined within Apex files that share the same name as the class. If you’re looking at the Developer Console, 
the filename will have an .apxc extension. If you’re in VSCode, you’ll see a .cls extension. This class would be defined in a 
file named Employee.cls or Employee.apxc, depending on where you’re looking.

An Inner class will not have its own file. It’s a subclass that’s defined inside of an Outer class. Instead of declaring Employee as 
an Outer class, we could instead declare an Outer class named Company and have Employee as an Inner class:
*/

public class Company {

      String companyName;

      public class Employee {
            String name;
            Integer startYear;
            String department;
            Boolean isCurrentEmployee; 
      }
}

/*
With this structure, we’ve created a dependency between Employee and Company. An Employee cannot exist without a Company. 
This would all be defined in a file named Company.cls.

Another important keyword here is public preceding the class keyword. public is an access modifier. public classes can be 
accessed by any class in the same namespace. Inner classes have an implicit private access modifier by default, but can be 
updated. private classes can only be accessed by their outer class.
*/


// Objects & No Argument Constructors
/*************************************
Remember, a class is a blueprint, or a model, for creating objects. This class does not represent a specific Employee, 
instead, it tells Apex what an Employee should look like and how it’s data should be structured. To represent a specific 
Employee, we need to create an object by instantiating our class with the new keyword:
*/

// Apex implicitly provides a default no-argument constructor for us, Employee(). See below
public class Employee {
      String name;
      Integer startYear;
      String department;
      Boolean isCurrentEmployee; 
}

/* 
Employee = data type
newEmployee = variable
Employee() = constructor, invoked by 'new'
*/

Employee newEmployee = new Employee();


// Employee() = optional, compared to the above declaration
public class Employee {
      String name;
      Integer startYear;
      String department;
      Boolean isCurrentEmployee; 

      public Employee() {
            // optional constructor code that runs initialization behavior 
      }
}

// The constructor must have the same name as its class. 
// The public keyword makes the constructor accessible to other classes.

// Let’s say every time an object is instantiated, you want to set the startYear to the current year. 
// We can add that logic in our constructor to guarantee it happens:
public class Employee {
      String name;
      Integer startYear;
      String department;
      Boolean isCurrentEmployee; 

      public Employee() {
            this.startYear = 2023;
      }
}
//The 'this' keyword is a reference variable. It refers to the current object - the object whose constructor is being called. 
// 'this' lets us refer to any member variable of the current object from within the constructor.


// constructor name: narutoCharacter() [must be the same as the] class name: narutoCharacter
public class narutoCharacter {
  String firstName;
  String lastName;
  String clanName;
  String teamLeader;
  Integer teamNumber;
  Boolean isAlive;

  public narutoCharacter() {
    this.isAlive = true;
  }
}
