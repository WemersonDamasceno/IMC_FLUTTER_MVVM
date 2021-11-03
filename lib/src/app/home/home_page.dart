import 'package:flutter/material.dart';
import 'package:imc_mvvm_flutter/src/app/home/home_controller.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) => controller.setAltura(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Altura",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => controller.setPeso(value),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Peso",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: controller.calcularImc,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                elevation: 20,
                padding: const EdgeInsets.all(20),
              ),
              child: const Text("Calcular"),
            ),

            const SizedBox(
              height: 20,
            ),
            //Sempre que o controller modificar o rxNotifier vai
            //refazer um novo build da tela
            RxBuilder(
              builder: (_) => Text(controller.getResult),
            ),
          ],
        ),
      ),
    );
  }
}
