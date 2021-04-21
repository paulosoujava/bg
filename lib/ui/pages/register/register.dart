import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../ui/ui.dart';
import 'controller/register_controller.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Register> {
  final controller = RegisterController();
  static const _ACCESS = "Cadastrar";

  @override
  Widget build(BuildContext context) {
    return TPLForm(
        actions: [
          MRButton.link("VOLTAR", () {
            controller.goTo(context);
          }, color: Colors.white)
        ],
        errorMessage: controller.error,
        footerTitle: "Ok Corrigir",
        error: controller.showError,
        load: controller.showLoad,
        hiddeError: () => controller.hiddeError(),
        organism: OForm(
          ctrlContract: controller,
          inputs: [
            ARInput.input(
              "digite seu nome",
              onChanged: (value) {
                controller.setValue(value, Types.NAME);
              },
              keyboardType: TextInputType.emailAddress,
            ),
            ARSpace.spaceH20(),
            ARInput.input(
              "digite seu email",
              onChanged: (value) {
                controller.setValue(value, Types.EMAIL);
              },
              keyboardType: TextInputType.emailAddress,
            ),
            ARSpace.spaceH20(),
            ARInput.input(
              "digite sua senha",
              onChanged: (value) {
                controller.setValue(value, Types.PASSWORD);
              },
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            ARSpace.spaceH20(),
            ARInput.input(
              "rep.  sua senha",
              onChanged: (value) {
                controller.setValue(value, Types.REPASSWORD);
              },
              keyboardType: TextInputType.number,
              obscureText: true,
            ),
            ARSpace.spaceH20(),
          ],
          mapper: {
            'logo':
                MRHeader.header(context, "logo".png(), width: 100, height: 100),
            'header': ARText.customText(context, "CAD", "ASTRO", ""),
            'button': ValueListenableBuilder<bool>(
              valueListenable: controller.showButton,
              builder: (_, enabled, __) => enabled
                  ? MRButton.regular(_ACCESS, () {
                      controller.validate(context);
                    })
                  : MRButton.disabled(_ACCESS),
            ),
            'link': MRButton.link("VOLTAR", () {
              controller.goTo(context);
            }),
          },
        ));
    ;
  }
}
