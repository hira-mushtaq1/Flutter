// cheking if number is divisible by 5 and 7;
void main() {
  /*num num1 = 35;
  var result = num1 % 5 == 0 && num1 % 7 == 0
      ? "The given number is divisible by 5 and 7 both"
      : "The given number is not divisible by 5 and 7 both";
  print(result);

  int temperature = 2;
  var res = temperature < 0
      ? "$temperature C The freezing temperature"
      : temperature > 0 && temperature <= 10
          ? "$temperature C Very cold weather "
          : temperature > 10 && temperature <= 20
              ? "$temperature C Cold weather "
              : temperature > 20 && temperature <= 30
                  ? "$temperature C  Normal temp "
                  : temperature > 30 && temperature <= 40
                      ? "$temperature:C Its Hot"
                      : "$temperature C Its very Hot";
            
  print(res);*/

  List<Map<String, dynamic>> studentDetails = [
    {
      'name': 'John',
      'marks': [80, 75, 90],
      'section': 'A',
      'rollNumber': 101
    },
    {
      'name': 'Emma',
      'marks': [95, 92, 88],
      'section': 'B',
      'rollNumber': 102
    },
    {
      'name': 'Ryan',
      'marks': [70, 65, 75],
      'section': 'A',
      'rollNumber': 103
    },
  ];
  for (var student in studentDetails) {
    String name = student['name'];
    List<int> marks = student['marks'];
    double average = marks.reduce((a, b) => a + b) / marks.length;
    String grade = getGrade(average);

    print('Name: $name, Grade: $grade');
  }
}

String getGrade(double average) {
  if (average >= 90) {
    return 'A';
  } else if (average >= 80) {
    return 'B';
  } else if (average >= 70) {
    return 'C';
  } else if (average >= 60) {
    return 'D';
  } else {
    return 'F';
  }

}
