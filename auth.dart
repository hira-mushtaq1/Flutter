void main(){
  String email="hira@gmail.com";
  String password="12345";
  if(email=="hira@gmail.com" && password=="12345"){
  print("All set! logged in Successfull");
  }
  else if(email!="hira@gmail.com" && password=="12345")
  {
    print("The email you entered is incorrect!");
  }
  else if(email=="hira@gmail.com" && password !="12345"){
       print("The password you entered is incorrect!");

  }
  else{
       print("Invalid credentials");


  }

}