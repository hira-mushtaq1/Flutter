

void main() {
 num maths= 85;
  num english= 88;
  num urdu=98;
  num physics=99;
  num chem=99;
  num obtainedMarks=maths+english+urdu+physics+chem;
  num totalMarks=500;
  double percentage=double.parse(((obtainedMarks/totalMarks)*100).toStringAsFixed(2));

  print("Report Card of Hira Mushtaq");
  print("Mathematics Marks: $maths");
  print("English Marks: $english");
  print("Urdu Marks: $urdu");
  print("Physics Marks: $physics");
  print("Chemistry Marks: $chem");
  print("Obtained Marks: $obtainedMarks Out of $totalMarks");
   print("Percentage :$percentage %");
  
  
  if(percentage>=80 ){
    print("Your grade is A+");    
  } 
    else if(percentage>=70 && percentage<80){
    print("Your Grade is A");    
  }
    else if(percentage>=60 && percentage<70){
    print("Your Grade is B");   
  }
    else if(percentage>=50 && percentage<60){
    print("Your Grade is C");    
  }
    else if(percentage>=40 && percentage<50){
    print("Your Grade is D");    
  }
    else if(percentage>=30 && percentage<40){
    print("Your Grade is E");    
  }
 else{
       print ("You are failed");
 };    
}  

