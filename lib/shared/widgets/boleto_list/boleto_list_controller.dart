import 'package:flutter/cupertino.dart';
import 'package:nlw6_payflow/shared/models/boleto_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BoletoListController {
  final boletosNotifier = ValueNotifier<List<BoletoModel>>(<BoletoModel>[]);
  List<BoletoModel> get boletos => boletosNotifier.value;
  set boletos(List<BoletoModel> value) => boletosNotifier.value = value;

  BoletoListController() {
    getBoletos();
  }

  Future<void> getBoletos() async {
    try {
      final instance = await SharedPreferences.getInstance();
      final savedBoletos = instance.getStringList("boletos") ?? <String>[];
      boletos = savedBoletos
          .map((savedBoleto) => BoletoModel.fromJson(savedBoleto))
          .toList();
    } catch (error) {
      boletos = <BoletoModel>[];
    }
  }
}
