void main() {
  // var: 관습적으로 함수나 메소드 내부에 지역 변수를 선언할 때는 var 사용
  // class 내부에 멤버 변수를 선언할 때는 타입을 명시
  var a = 10;
  print(a);

  // dynamic: 변수의 타입을 런타임에 결정
  // method 추천을 받지 못함
  var b;
  b = 10;
  b = 'hello';
  b = true;
  print(b);
  // dynamic 을 명시할 수 있음
  dynamic c;
  c = 10;
  c = 'hello';
  c = true;
  print(c);

  // null safety
  // null exception 발생 가능성이 있는 변수에 ?를 붙여서 null safety를 적용
  String? d = null;
  print(d);
  // d.isEmpty; -> null safety 때문에 에러 발생
  // null safety를 적용한 변수는 null check를 강제함
  if (d != null) {
    d.isEmpty;
  }
  // ? 물음표로 null check를 할 수 있음
  d?.isEmpty;

  // final: 한 번 값을 할당하면 변경할 수 없는 변수
  // const: 컴파일 타임에 값을 결정해야 하는 상수
  final e = 10;
  const f = 10;
  // e = 20; -> 에러 발생
  // f = 20; -> 에러 발생
  // const는 컴파일 타임에 값을 결정해야 하기 때문에
  // const 변수에는 상수만 할당할 수 있음
  // const g = e; -> 에러 발생

  // final 변수에는 상수 또는 변수를 할당할 수 있음
  final h = f;

  // late: 변수의 초기화를 늦춤
  // fetching 할 때 많이 사용
  late int i;
  i = 10;

  // list
  List<int> numbers1 = [1, 2, 3];

  // collection if 기능
  var giveMeFive = true;
  var numbers2 = [
    1,
    2,
    3,
    if (giveMeFive) 5,
  ];
  print(numbers2);

  // String interpolation
  var name = 'John';
  var age = 30;
  var message = 'My name is $name. I\'m ${age + 2} years old.';
  print(message);

  // collection for 기능
  var numbers3 = [1, 2, 3];
  var numbers4 = [
    for (var n in numbers3) n * 2,
  ];
  print(numbers4);

  // spread operator
  var numbers5 = [1, 2, 3];
  var numbers6 = [0, ...numbers5];
  print(numbers6);

  // set
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  // map
  // dart class가 워낙 강력해서 map을 잘 사용하지 않음
  var gifts = {
    // key: value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golden rings',
  };
  print(gifts);

  // function
  print(add(10, 20));

  // named parameter
  print(sayHello(name: 'John'));

  // ?? operator
  print(capitalize(null));
  print(capitalize('John'));

  // ??= operator
  // ??= 연산자는 왼쪽 피연산자가 null이면 오른쪽 피연산자를 할당
  var name1;
  name1 ??= 'Guest';
  print(name1);

  // class
  // var player = Player('John', 30);
  // player.introduce();

  // named constructor parameters
  var player = Player(name: 'John', age: 30);
  player.introduce();

  // named constructor
  var guest = Player.guest(30);
  guest.introduce();

  // cascade notation
  // cascade notation을 사용하면 객체를 생성한 후에
  // 여러 메소드를 연속적으로 호출할 수 있음
  var player1 = Player(name: 'John', age: 30)
    ..introduce()
    ..age = 40
    ..introduce();
}

// fat arrow
// 함수의 본문이 한 줄인 경우에는 fat arrow를 사용할 수 있음
int add(int a, int b) => a + b;

// named parameter
// 함수의 매개변수에 이름을 붙여서 호출할 때 매개변수의 이름을 명시할 수 있음
String sayHello({required String name, String? message}) {
  return 'Hello $name! $message';
}

// ?? operator
// ?? 연산자는 왼쪽 피연산자가 null이면 오른쪽 피연산자를 반환
// ?? 연산자는 null safety를 적용한 변수에만 사용할 수 있음
String capitalize(String? name) => name?.toUpperCase() ?? 'Guest';

// class
// class Player {
//   // field
//   String name;
//   int age;

//   // constructor
//   Player(this.name, this.age);

//   // method
//   void introduce() {
//     print('My name is $name. I\'m $age years old.');
//   }
// }

// named constructor parameters
class Player {
  // field
  String name;
  int age;

  // named constructor parameters
  Player({required this.name, required this.age});

  // named constructor
  Player.guest(int age)
      : this.name = 'Guest',
        this.age = age;

  // method
  void introduce() {
    print('My name is $name. I\'m $age years old.');
  }
}

// abstract class
abstract class Human {
  void walk();
}

class Coach extends Human {
  // Human을 상속 받았기 때문에 꼭 walk를 구현해야 됨.
  void walk() {
    print("Coach is walking");
  }
}
