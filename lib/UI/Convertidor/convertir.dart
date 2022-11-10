import 'package:flutter/material.dart';

class Convertir extends StatefulWidget {
  const Convertir({super.key});

  @override
  State<Convertir> createState() => _ConvertirState();
}

class _ConvertirState extends State<Convertir> {
  TextEditingController diviconv = TextEditingController();
  TextEditingController diviresu = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convertir divisas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            const Text('Valor a Convertir:'),
            TextField(
              textAlign: TextAlign.center,
              controller: diviconv,
              decoration: const InputDecoration(hintText: '0.0'),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Resultado Conversión:'),
            TextField(
              controller: diviresu,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(hintText: '0.0'),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Boton(valor: '7'),
                Boton(valor: '8'),
                Boton(valor: '9'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Boton(valor: '4'),
                Boton(valor: '5'),
                Boton(valor: '6'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Boton(valor: '1'),
                Boton(valor: '2'),
                Boton(valor: '3')
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [Boton(valor: '0'), Boton1(valor: 'CE')],
            ),
          ],
        ),
      ),
    );
  }
}

class Boton extends StatelessWidget {
  final String valor;
  const Boton({Key? key, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 70,
        height: 70,
        color: Colors.teal,
        child: Center(
          child: Text(
            valor,
            style: const TextStyle(fontSize: 33, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Boton1 extends StatelessWidget {
  final String valor;
  const Boton1({Key? key, required this.valor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 107,
        height: 70,
        color: Colors.teal,
        child: Center(
          child: Text(
            valor,
            style: const TextStyle(fontSize: 33, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
