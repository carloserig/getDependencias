import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_dependencias/pages/basico/basico_controller.dart';

class BasicoHomePage extends StatelessWidget {

  BasicoHomePage({ Key? key }) : super(key: key);

  final controller = Get.put(BasicoController());

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Basico Home Page'),),
           body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedBuilder(
                  animation: controller, 
                  builder: (context, child) {
                    return Text(
                      controller.nome,
                        style: Theme.of(context).textTheme.titleLarge,
                    );
                  },
                ),
                WidgetInterno(),
              ],
            ),
           ),
       );
  }
}

class WidgetInterno extends StatelessWidget {
  const WidgetInterno({ Key? key }) : super(key: key);

   @override
   Widget build(BuildContext context) {
       return Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              Get.find<BasicoController>().alterarNome('Carlos Erig');
            }, 
            child: Text('Alterar Nome')),
        ],
       );
  }
}