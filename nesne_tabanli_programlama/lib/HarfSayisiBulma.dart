void main(){

var h = Harfsayisibulma();
h.harfBul("ankara", "a");

}

class Harfsayisibulma{

  void harfBul(String kelime, String harf){

    int sayac = 0;

    for(var i=0;i<kelime.length;i++){
      if(kelime[i]==harf){
        sayac = sayac + 1;
      }
    }

    print("$kelime kelimesinin içinde '$harf' harfi $sayac tane vardır.");

  }

}
