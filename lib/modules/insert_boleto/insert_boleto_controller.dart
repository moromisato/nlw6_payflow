import 'package:flutter/cupertino.dart';
import 'package:nlw6_payflow/shared/models/boleto_model.dart';

class InsertBoletoController {
  final formKey = GlobalKey<FormState>();
  BoletoModel model = BoletoModel();

  String? validateName(String? value) =>
      value?.isEmpty ?? true ? "O nome não pode ser vazio" : null;
  String? validateDueDate(String? value) =>
      value?.isEmpty ?? true ? "A data de vencimento não pode ser vazio" : null;
  String? validateValue(double value) =>
      value == 0 ? "Insira um valor maior que R\$ 0,00" : null;
  String? validateCode(String? value) =>
      value?.isEmpty ?? true ? "O código do boleto não pode ser vazio" : null;

  void onChange(
      {String? name, String? dueDate, double? value, String? barcode}) {
    model = model.copyWith(
        name: name, dueDate: dueDate, value: value, barcode: barcode);
  }

  void registerBoleto() {
    final form = formKey.currentState;
    if (form!.validate()) {}
  }
}
