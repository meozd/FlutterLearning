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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            PopupMenuButton(
                child: Icon(Icons.open_in_new),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: Text("Sil",style: TextStyle(color: Colors.red),),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Güncelle",style: TextStyle(color: Colors.indigo),),
                  ),
                ],
              onCanceled: (){
                  print("Seçim yapılmadı");
              },
              onSelected: (menuItemValue){
                  if(menuItemValue == 1){
                    print("Sil seçildi");
                  }
                  if(menuItemValue == 2){
                    print("Güncelle seçildi");
                  }
              },
            ),
          ],
        ),
      ),
    );
  }
}