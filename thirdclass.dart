void main(){
String name= "Hira";
String password="12345";
var res=name=="Hira" && password=="12345"?"Valid Credentials User loggged in succesfully": name !="Hira" && password=="12345"?"User name Not fund": name=="Hira" && password !="12345"? "Wrong Password":name!="Hira" && password!="12345"? "Invalid Credentials":null;

print(res);

// String email="hira@gmail.com";
  // String password = "12345";
  // if (email == "hira@gmail.com" && password == "12345") {
  //   print("All set! logged in Successfull");
  // } else if (email != "hira@gmail.com" && password == "12345") {
  //   print("The email you entered is incorrect!");
  // } else if (email == "hira@gmail.com" && password != "12345") {
  //   print("The password you entered is incorrect!");
  // } else {
  //   print("Invalid credentials");
  // }


}