import 'package:filmler_uygulamasi/FilmlerSayfa.dart';
import 'package:filmler_uygulamasi/Kategoriler.dart';
import 'package:filmler_uygulamasi/Kategorilerdao.dart';
import 'package:filmler_uygulamasi/VeritabaniYardimcisi.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {

  Future<List<Kategoriler>> tumKategorileriGoster() async{
    var kategoriListesi = await Kategorilerdao().tumKategoriler();

    return kategoriListesi;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Kategoriler"),
      ),
      body: FutureBuilder<List<Kategoriler>>(
        future: tumKategorileriGoster(),
        builder: (context,snapshot){
          if(snapshot.hasData){
            var kategoriListesi = snapshot.data;
            return ListView.builder(
              itemCount: kategoriListesi!.length,
              itemBuilder: (context,indeks){
                var kategori = kategoriListesi[indeks];
                return GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => FilmlerSayfa(kategori: kategori,)));
                  },
                  child: Card(
                    child: SizedBox(height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(kategori.kategoriAd),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }else{
            return Center();
          }
        },
      ),
    );
  }
}
