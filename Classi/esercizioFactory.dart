class Person {
  final String name;
  final int age;
  const Person({required this.name, required this.age});

  factory Person.fromJson(Map<String, Object> json) {
    final name = json['name'];
    final age = json['age'];
    if (name is String) {
      if (age is int) {
        return Person(name: name, age: age);
      }
      throw UnsupportedError('age problem');
    }
    throw UnsupportedError('name problem');
  }

  Map<String, Object> toJson() => {
        'name': name,
        'age': age,
      };
}

void main() {
  final person = Person.fromJson({
    'name': 'Ali',
    'age': 22,
  });

  print(person.toJson());
}
