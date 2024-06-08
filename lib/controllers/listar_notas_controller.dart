import 'package:mobx/mobx.dart';

part 'listar_notas_controller.g.dart';

class ListarNotasController = ListarNotasControllerBase
    with _$ListarNotasController;

abstract class ListarNotasControllerBase with Store {
  @observable
  List<Map<String, dynamic>> listarNotas = [
    {
      'titulo': 'Arrumar o quarto',
      'descricao': 'Tirar poeira, arrumar a cama, abrir a janela.',
      'status': 'Pendente'
    }
  ];

  @observable
  String campoTitulo = '';

  @observable
  String campoDescricao = '';

  @observable
  String campoStatus = '';

  @observable
  bool carregando = false;

  void adicionarNovasNotas() {
    carregando = true;
    listarNotas.add({
      "titulo": campoTitulo,
      "descricao": campoDescricao,
      "status": campoStatus
    });

    campoTitulo = '';
    campoDescricao = '';
    campoStatus = '';
    carregando = false;

    listarNotas = listarNotas;
  }
}
