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
}
