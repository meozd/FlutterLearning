void main(){
  //3 ile 6

  for(int i=3;i<7;i++){
    print("Döngü 1: $i");
  }

  var sayac = 3;
  while(sayac<7){
    print("Döngü 2: $sayac");
    sayac+=1;
  }

  //0 ile 8 2şer

  for(int i=0;i<9;i+=2){
    print("Döngü 3: $i");
  }

  var sayac1 = 0;
  while(sayac1<9){
    print("Döngü 4: $sayac1");
    sayac1+=2;
  }

  //8den 0 2şer azalsın

  for(int i=8;i>-1;i-=2){
    print("Döngü 5: $i");
  }

  var sayac2 = 8;
  while(sayac2>-1){
    print("Döngü 6: $sayac2");
    sayac2-=2;
  }

}