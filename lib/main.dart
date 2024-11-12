import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Inicio(),
    );
  }
}

class Inicio extends StatelessWidget {
  const Inicio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Cuerpo(),
    );
  }
}

class Cuerpo extends StatelessWidget {
  const Cuerpo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMVJ44U2MSgobxlbjAAIgGp1tKP7OCNFBXrA&s.jpg'), fit: BoxFit.cover)),
      child: 
      Column(children: [Etiqueta(), CampoUser(),CampoPass(),BotonEntrar()],
      mainAxisAlignment: MainAxisAlignment.center,)
    );
  }
}

Widget Etiqueta(){
  return Container(child: Center(child: Text('SING IN', style: TextStyle(fontSize: 25.0, color: Colors.white),),),);
}

Widget CampoUser(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child: TextField(decoration: InputDecoration(hintText: 'User', fillColor: Colors.white,filled: true),),);
}

Widget CampoPass(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(hintText: 'Password', fillColor: Colors.white,filled: true),),);
}

Widget BotonEntrar() {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      'Intro Now',
      style: TextStyle(fontSize: 20.0, color: Colors.black),
    ),
  );
}
