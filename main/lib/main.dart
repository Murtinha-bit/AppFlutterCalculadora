import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  String resp = "";
  somar() {
    double num1 = double.parse(this.num1Controller.text);
    double num2 = double.parse(this.num2Controller.text);
    double resultado = num1 + num2;
    this.resp = '$num1 + $num2 = ' + resultado.toStringAsFixed(2);
    return this.resp;
  }

  subtrair() {
    double num1 = double.parse(this.num1Controller.text);
    double num2 = double.parse(this.num2Controller.text);
    double resultado = num1 - num2;
    this.resp = '$num1 - $num2 = ' + resultado.toStringAsFixed(2);
    return this.resp;
  }

  dividir() {
    double num1 = double.parse(this.num1Controller.text);
    double num2 = double.parse(this.num2Controller.text);
    double resultado = num1 / num2;
    this.resp = '$num1 / $num2 = ' + resultado.toStringAsFixed(2);
    return this.resp;
  }

  multiplicar() {
    double num1 = double.parse(this.num1Controller.text);
    double num2 = double.parse(this.num2Controller.text);
    double resultado = num1 * num2;
    this.resp = '$num1 * $num2 = ' + resultado.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
      ),
      body: Column(
        children: [
          Text('Informe o primeiro numero'),
          TextField(
            controller: num1Controller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add_box_sharp),
              suffixIcon: IconButton(
                onPressed: () => num1Controller.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          Text('Informe o segundo numero'),
          TextField(
            controller: num2Controller,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.add_box_sharp),
              suffixIcon: IconButton(
                onPressed: () => num2Controller.clear(),
                icon: Icon(Icons.clear),
              ),
              border: OutlineInputBorder(),
            ),
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(somar);
                },
                child: Text(
                  '+',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(subtrair);
                },
                child: Text('-', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(dividir);
                },
                child: Text('/', style: TextStyle(fontSize: 20)),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(multiplicar);
                },
                child: Text('*', style: TextStyle(fontSize: 20)),
              ),
            ],
          )),
          Text(
            resp,
            style: TextStyle(color: Colors.blue, fontSize: 20),
          )
        ],
      ),
    );
  }
}
