import 'dart:io';

void main(){

  
// int rows = 4;
//   for (int i = 1; i <= rows; i++) {
//     for (int j = 1; j <= i; j++) {
//       print(j);
//     }
//   }


//   for (int i = 1; i <5; i++) {
//     for (int j = 1; j <= 10; j++) {
//       print('$i x $j = ${i*j}');
//     }
//   }
// }




  for (int i = 1; i < 5; i++) {
    for (int j = 1; j <= i; j++) {
      for(int k=1; k<j; k++){
  
        stdout.write('*');
      }
       stdout.write(' ');
   
    }
    print("");


  }

}