import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        toolbarHeight: 70,
        title: Text("Riwayat Jadwal"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)),
              gradient: LinearGradient(
                  colors: [Color(0xff30A2FF), Color(0xff30A2FF)],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter)),
        ),
      ),
      body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, i) {
            return Container(
              height: 130,
              child: Card(
                color: Colors.blue,
                elevation: 10,
                child: Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 440.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Container(
                                child: Column(
                                  children: [
                                    Text('Status' 'SELESAI',style: TextStyle(textAlign: TextAlign.left),),
                                    Text('Nama Siswa' 'Arra'),
                                    SizedBox(height: 12,),
                                    Text('Kelas' 'XI PPLG 1'),
                                    Text('Nama Wali Kelas' 'bjir'),
                                  ],
                                ),
                              ),
                              Container(
                                child: Column(
                                  children: [
                                    Text('Bimbingan Sosial' 'Bimbingan Sosial'),
                                    Text('Hasil Konseling' 'asd'),
                                    Text('Waktu' '06-06-2023')
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
      backgroundColor: Color(0xff11009E),
    );
  }
}
