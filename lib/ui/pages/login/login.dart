import 'package:flutter/material.dart';


import '../../../core/core.dart';
import '../../../ui/ui.dart';
import 'controller/login_controller.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<Login> {
  final controller = LoginController();
  static const _ACCESS = "Acessar";

  @override
  Widget build(BuildContext context) {
    return TPLForm(
        actions: [
          MRButton.link("Criar uma conta", () {
            controller.goTo(context);
          }, color: Colors.white)
        ],
        errorMessage: controller.error,
        footerTitle: "Ok tentar novamente",
        headertitle: "Opss",
        error: controller.showError,
        load: controller.showLoad,
        hiddeError: controller.hiddeError,
        organism:
          OForm(
            ctrlContract: controller,
            inputs: [
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
            ],
            mapper: {
              'logo': MRHeader.header(context, "logo".png(),width: 100, height: 100),
              'header': ARText.customText(context, "LOG", "IN", ""),
              'button': ValueListenableBuilder<bool>(
                valueListenable: controller.showButton,
                builder: (_, enabled, __) => enabled
                    ? MRButton.regular(_ACCESS, () {
                        controller.validate(context);
                      })
                    : MRButton.disabled(_ACCESS),
              ),
            },
          )
        );
  }
}
