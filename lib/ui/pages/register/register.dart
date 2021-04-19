import 'package:flutter/material.dart';

import '../../../core/core.dart';
import '../../../ui/atom/atom.dart';
import '../../../ui/organism/organism.dart';
import '../../../ui/molecule/molecule.dart';
import 'controller/register_controller.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Register> {
  final controller = RegisterController();
  static final _ACCESS = "Cadastrar";

  @override
  Widget build(BuildContext context) {
    return OForm(
      controller: controller,
      inputs: [
        ARInput.input(
          "digite seu email",
          (value) {
            controller.setValue(value, Types.EMAIL);
          },
          keyboardType: TextInputType.emailAddress,
        ),
        ARSpace.spaceH20(),
        ARInput.input(
          "digite sua senha",
          (value) {
            controller.setValue(value, Types.PASSWORD);
          },
          keyboardType: TextInputType.number,
          obscureText: true,
        ),
        ARSpace.spaceH20(),
        ARInput.input(
          "rep.  sua senha",
          (value) {
            controller.setValue(value, Types.REPASSWORD);
          },
          keyboardType: TextInputType.number,
          obscureText: true,
        ),
        ARSpace.spaceH20(),
      ],
      mapper: {
        'logo': MRHeader.header(context, "logo".png()),
        'header': ARText.customText(context, "CAD", "ASTRO", ""),
        'button': ValueListenableBuilder<bool>(
          valueListenable: controller.enabledButtonNotifer,
          builder: (_, enabled, __) => enabled
              ? MRButton.regular(_ACCESS, () {
                  controller.onValidate(context);
                })
              : MRButton.disabled(_ACCESS),
        ),
        'link': MRButton.link("VOLTAR", () {
          controller.goTo(context);
        }),
        'load': ValueListenableBuilder<bool>(
            valueListenable: controller.showLoad,
            builder: (_, enabled, __) =>
                enabled ? MRLoad.load(context) : Container()),
        'errors': ValueListenableBuilder<bool>(
            valueListenable: controller.showError,
            builder: (_, enabled, __) => enabled
                ? MRLoad.loadError(context,
                    label: "Ok entendi",
                    pt2: "Email Ou Senha\n",
                    pt3: "valide-os", onPress: () {
                    controller.backNormal();
                  })
                : Container()),
      },
    );
  }
}
