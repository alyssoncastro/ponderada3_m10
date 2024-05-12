import 'package:flutter/material.dart';

class TelaDeConteudo extends StatelessWidget {
  const TelaDeConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ACESSADO! BEM-VINDO'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'BEM-VINDO À APLICAÇÃO',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://picsum.photos/300',
              width: 300,
              height: 300,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => const TelaDeConteudo(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
              },
              child: const Text("Atualizar Página"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Voltar"),
            ),
          ],
        ),
      ),
    );
  }
}
