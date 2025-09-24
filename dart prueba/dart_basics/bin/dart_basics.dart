import 'dart:ffi';
import 'dart:io';

import 'package:dart_basics/IceCream.dart';
import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  var chocolate = IceCream();
  chocolate.flavor = "Chocolate";
  var test = IceCream();

  test.charge();
  chocolate.charge();
}

// ----- TEORIA -------

void greetings(String name) {
  var age = 25;
  var example = 41.3;

  print(name);
}

void numExamples() {
  // Variables numericas
  int age = 31;
  int test = -56;
  int large = 010000;

  double age2 = 31.1;
  double age3 = 31.0;

  //Num consume menos memoria
  num age4 = 12;
}

void otherVariables() {
  //Variables booleanas
  bool imHappyTest = true;

  //Tipo dinamico
  dynamic example = 'Hola soy un ejemplo';
  print(example);
  example = 23;
  print(example);

  //Tipo fijos
  final String example2 = 'Aris';
  const String example3 = 'Mi clave 123'; //Valores a mano como claves
}

void conversionVariables() {
  //Conversion

  String toNumber = '31';
  int numberOk = int.parse(toNumber);
  print(numberOk);

  int numberToString = 615;
  String stringOk = numberToString.toString();
  print(stringOk);

  String toDouble = "34.23";
  double doubleOk = double.parse(toDouble);
  print(doubleOk);
}

void operacionMath() {
  //Operaciones matematicas
  int a = 1;
  int b = 4;

  // int result = a + b; //Suma
  // int result = a - b; //Resta
  // int result = a * b; //Multiplicacion
  // double result = a / b; //Division
  // int result = a ~/ b; //Division sin decimal
  // int result = a % b; // Modulo

  a += b; //Suma etc
  a -= b; //Resta etc

  a++; //Incrementar

  print('Resultado es: $a');
}

void stringExamples() {
  //Variables cadena de texto
  String name = 'Aristoputas';
  name = 'Hola';
  String currentAge = '31 años';
  //String fullText = name + currentAge;
  String fullText = '$name y tengo $currentAge';

  print(fullText);
}

void condicionales() {
  int userAge = 18;

  if (userAge >= 18) {
    print('Eres mayor de edad');
  } else {
    print('Eres menor de edad');
  }

  int experienceYears = 5;
  if (experienceYears > 8) {
    print('Eres programador senior');
  } else if (experienceYears >= 5) {
    print('Eres programador mid');
  } else {
    print('Eres programador junior');
  }

  print('Introduce un dia de la semana');
  int numberOfTheWeek = int.parse(stdin.readLineSync()!);

  if (numberOfTheWeek == 1) {
    print('Lunes');
  } else if (numberOfTheWeek == 2) {
    print('Martes');
  } else if (numberOfTheWeek == 3) {
    print('Miercoles');
  } else if (numberOfTheWeek == 4) {
    print('Jueves');
  } else if (numberOfTheWeek == 5) {
    print('Viernes');
  } else if (numberOfTheWeek == 6) {
    print('Sabado');
  } else if (numberOfTheWeek == 7) {
    print('Domingo');
  } else {
    print('Numero no Valido');
  }

  switch (numberOfTheWeek) {
    case 1:
      print('Lunes');
      break;
    case 2:
      print('Martes');
      break;
    case 3:
      print('Miercoles');
      break;
    case 4:
      print('Jueves');
      break;
    case 5:
      print('Viernes');
      break;
    case 6:
      print('Sabado');
      break;
    case 7:
      print('Domingo');
      break;
    default:
      print('Numero no Valido');
      break;
  }
}

// ------- METODOS ----------

void simpleFunction() {
  print('Ejemplo');
}

void inputFunction(int a, int b) {
  int result = a + b;
  print('El resultado es $result');
}

int funcionSalida() {
  int a = 5;
  int b = 4;
  return a + b;
}

int completeFunction(int a, int b) {
  return a + b;
}

int completeFunction2(int a, int b) => a + b;

void optionalFunction({String name = 'Desconocido', int age = -1}) {
  print('Eres $name y tines $age');
}

// -------- ESTRUCTURAS DE DATOS ------

void listExamples() {
  List<String> names = ["Jairo", "Jhon", "Pepe"]; //Recomendado
  var name2 = ["Carlos", "Sebastian", "Alfonso"];

  //print(names[9]);
  //print(names.last);
  //print(names.first);
  //print(names.length);
  // names[2] = "Maria";
  // names.add('Holi');
  // print(names[names.length - 1]);
  //names.addAll(name2);
  //names.remove("Pepe");
  //names.removeAt(1);
  // Eliminar todo names.clear();

  names.insert(2, 'Ashlyn');
  print(names);
}

void setExamples() {
  //En el set no se puede repetir la informacion
  Set<String> names = {"Jhon", "Jairo"};
  Set<String> names2 = {"Jhon", "Jairo"};
  names.add("Jhon");
  names.add("jhon");
  names.add("Bimbo");
  names.remove("jhon");
  //names.clear();
  //names.removeAll(names2);
  bool result = names.contains("Jairo");

  if (names.contains("Jairo")) {
    print("Eres");
  } else {
    print("No eres");
  }
  print(names);

  List<String> newNames = ["Jhon", "Jairo", "Jhon"];
  Set<String> newNamesSet = Set.from(newNames);
  print(newNamesSet);
}

void mapExamples() {
  Map<String, int> people = {"Aris": 32, "Pepe": 40, "Dev": 20};

  people["Aris"] = 75;
  people.addAll({"David": 20, "Miguel": 22});
  people["2B"] = 69;
  //print(people["Aris"]);
  people.remove("David");
  print(people);
  print(people.keys);

  people.containsKey("Aris");
  people.containsValue(69);
  print(people.values);
}

void listLoop() {
  List<int> numbers = [1, 2, 3, 4, 5, 6];

  // for (var i = 0; i < numbers.length; i++) {
  //   print("Con el for basico tenemos: ${numbers[i]}");
  // }

  // for (var element in numbers) {
  //   print("Con el for numero 2 tengo $element");
  // }

  // numbers.forEach((item) {
  //   print("El numero es $item");
  // });

  numbers.forEach(print);
}

void setLoop() {
  Set<int> numbers = {1, 2, 3, 4, 5, 6};

  // for (var element in numbers) {
  //   print("El set : $element");
  // }

  numbers.forEach(print);
}

void mapLoop() {
  Map<String, int> numbers = {"favNumber": 13, "birthday": 12, "address": 23};

  // for (var element in numbers.entries) {
  //   print("La clave es ${element.key} y el valor es ${element.value}");
  // }

  numbers.forEach((key, value) {
    print("la clave es $key y el valor es $value ");
  });
}

void nullability() {
  String? name = "Aris";
  name = "";
  name = null;

  String example2 = name ?? "Invitado";

  name ??= "Pepe";

  if (name != null) {
    print("Hola $name");
  }
}

// ------- EJERCICIOS -------

void ejercicio1() {
  print('Introduce tu año de nacimiento');
  String date = stdin.readLineSync()!;
  const int currentYear = 2025;
  int nacimiento = int.parse(date);
  int result = currentYear - nacimiento;

  print('Tienes $result años');
}

void ejercicio2() {
  double sale = 29.99;
  double propina = 20;
  int clientes = 2;

  double total = (sale * (propina / 100)) + sale;

  String pago = (total / clientes).toStringAsFixed(2);
  print('El total de la cuenta es: ${total.toStringAsFixed(2)} dolares');
  print(
    'El total a pagar de cada cliente es: $pago dolares propina incluida. Gracias',
  );
}

void ejercicio3() {
  print('Escribe un numero');
  int numero = int.parse(stdin.readLineSync()!);

  switch (numero) {
    case < 0:
      print('Es negativo');
      break;
    case > 0:
      print('Es positivo');
      break;
    default:
      print('Es cero');
      break;
  }
}

void ejercicio4() {
  print('Escribe un numero');
  int mes = int.parse(stdin.readLineSync()!);

  switch (mes) {
    case 1:
      print('Enero');
      break;
    case 2:
      print('Febrero');
      break;
    case 3:
      print('Marzo');
      break;
    case 4:
      print('Abril');
      break;
    case 5:
      print('Mayo');
      break;
    case 6:
      print('Junio');
      break;
    case 7:
      print('Julio');
      break;
    case 8:
      print('Agosto');
      break;
    case 9:
      print('Septiembre');
      break;
    case 10:
      print('Octubre');
      break;
    case 11:
      print('Noviembre');
      break;
    case 12:
      print('Diciembre');
      break;
    default:
      print('No valido');
      break;
  }
}

void ejercicio5() {
  List<int> numeros = [1, 2, 3, 4, 5, 6];
  var result = 0;
  for (var element in numeros) {
    if (element % 2 == 0) {
      result += element;
    }
  }
  if (result == 0) {
    print("No hay numeros par");
  } else {
    print("El resultado es: $result");
  }
}

void ejercicio6() {
  List<String> lista = ["hola", "hola", "carro", "moto", "moto"];
  // Set<String> filtro = {};

  // for (var element in lista) {
  //   filtro.add(element);
  // }

  Set<String> filtro = Set.from(lista);

  print(filtro);
}

void ejercicio7() {
  List<String> lista = [
    "dart",
    "flutter",
    "dart",
    "codigo",
    "flutter",
    "movil",
    "dart",
  ];

  Map<String, int> veces = {};
  int cantidad = 0;

  for (var element in lista) {
    if (veces.containsKey(element)) {
      veces[element] = veces[element]! + 1;
    } else {
      veces[element] = 1;
    }
  }
  print(veces);
}
