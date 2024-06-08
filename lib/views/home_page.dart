import 'package:app_anotacoes/controllers/listar_notas_controller.dart';
import 'package:app_anotacoes/views/anotacao_detalhes_page.dart';
import 'package:app_anotacoes/views/nova_anotacao_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  mostrarDetalhes(String titulo, descricao, status) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => AnotacaoDetalhesPage(
          titulo: titulo,
          descricao: descricao,
          status: status,
        ),
      ),
    );
  }

  final ListarNotasController controllerLista = ListarNotasController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Anotações',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 169, 149, 204),
      ),
      body: Observer(builder: (_) {
        return ListView.builder(
          itemCount: controllerLista.listarNotas.length,
          itemBuilder: (BuildContext context, index) {
            Map<String, dynamic> notas = controllerLista.listarNotas[index];
            return Card(
              child: ListTile(
                leading: const Icon(Icons.assignment),
                title: Text(
                  notas['titulo'],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text(notas['status']),
                trailing: IconButton(
                  onPressed: () => mostrarDetalhes(
                      notas['titulo'], notas['descricao'], notas['status']),
                  icon: const Icon(Icons.navigate_next),
                ),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    NovaAnotacaoPage(controller: controllerLista),
              )).then(
            (value) => setState(() {}),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
