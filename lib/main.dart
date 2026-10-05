import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HuertoPage(),
    );
  }
}

class HuertoPage extends StatefulWidget{
  const HuertoPage({super.key})
  @Override
  State<StatefulWidget> createState()  => _HuertoPage();
  
  
}

class _HuertoPage extends State<HuertoPage> {
  final controller = TextEditingController();
  final List<String> cultivos = [];

  void agregar(){
    final texto = controller.text.trim();
    if (texto.isEmpty) return;
    setState(() {
      cultivos.add(texto);
      controller.clear();
    });
  }
   @override
   void dispose(){
    controller.dispose();
    super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      title: const Text('Mi huero'),
    ),
    body: Padding(padding: const EdgeInsets.all(16),
    child: Column(
      children: [
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Nombre del cultivo',
            border: OutlineInputBorder(),
          ),
        )
      ],
    ),
    )
    
  }
}
