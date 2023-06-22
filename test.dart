// cheking if number is divisible by 5 and 7;
void main() {
  num num1 = 35;
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
            
  print(res);
}
