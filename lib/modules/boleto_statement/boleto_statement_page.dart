import 'package:flutter/material.dart';
import 'package:nlw6_payflow/shared/themes/app_colors.dart';
import 'package:nlw6_payflow/shared/themes/app_text_styles.dart';
import 'package:nlw6_payflow/shared/widgets/boleto_list/boleto_list_controller.dart';
import 'package:nlw6_payflow/shared/widgets/boleto_list/boleto_list_widget.dart';

class BoletoStatementPage extends StatefulWidget {
  const BoletoStatementPage({Key? key}) : super(key: key);

  @override
  _BoletoStatementPageState createState() => _BoletoStatementPageState();
}

class _BoletoStatementPageState extends State<BoletoStatementPage> {
  final controller = BoletoListController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
            child: Row(
              children: [
                Text(
                  "Meus Extratos",
                  style: TextStyles.titleBoldHeading,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
            child: Divider(
              thickness: 1,
              height: 1,
              color: AppColors.stroke,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: BoletoListWidget(
              controller: controller,
            ),
          )
        ],
      ),
    );
  }
}
