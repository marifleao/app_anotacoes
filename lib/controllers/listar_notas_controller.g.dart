// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listar_notas_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListarNotasController on ListarNotasControllerBase, Store {
  late final _$listarNotasAtom =
      Atom(name: 'ListarNotasControllerBase.listarNotas', context: context);

  @override
  List<Map<String, dynamic>> get listarNotas {
    _$listarNotasAtom.reportRead();
    return super.listarNotas;
  }

  @override
  set listarNotas(List<Map<String, dynamic>> value) {
    _$listarNotasAtom.reportWrite(value, super.listarNotas, () {
      super.listarNotas = value;
    });
  }

  late final _$campoTituloAtom =
      Atom(name: 'ListarNotasControllerBase.campoTitulo', context: context);

  @override
  String get campoTitulo {
    _$campoTituloAtom.reportRead();
    return super.campoTitulo;
  }

  @override
  set campoTitulo(String value) {
    _$campoTituloAtom.reportWrite(value, super.campoTitulo, () {
      super.campoTitulo = value;
    });
  }

  late final _$campoDescricaoAtom =
      Atom(name: 'ListarNotasControllerBase.campoDescricao', context: context);

  @override
  String get campoDescricao {
    _$campoDescricaoAtom.reportRead();
    return super.campoDescricao;
  }

  @override
  set campoDescricao(String value) {
    _$campoDescricaoAtom.reportWrite(value, super.campoDescricao, () {
      super.campoDescricao = value;
    });
  }

  late final _$campoStatusAtom =
      Atom(name: 'ListarNotasControllerBase.campoStatus', context: context);

  @override
  String get campoStatus {
    _$campoStatusAtom.reportRead();
    return super.campoStatus;
  }

  @override
  set campoStatus(String value) {
    _$campoStatusAtom.reportWrite(value, super.campoStatus, () {
      super.campoStatus = value;
    });
  }

  late final _$carregandoAtom =
      Atom(name: 'ListarNotasControllerBase.carregando', context: context);

  @override
  bool get carregando {
    _$carregandoAtom.reportRead();
    return super.carregando;
  }

  @override
  set carregando(bool value) {
    _$carregandoAtom.reportWrite(value, super.carregando, () {
      super.carregando = value;
    });
  }

  @override
  String toString() {
    return '''
listarNotas: ${listarNotas},
campoTitulo: ${campoTitulo},
campoDescricao: ${campoDescricao},
campoStatus: ${campoStatus},
carregando: ${carregando}
    ''';
  }
}
