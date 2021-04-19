import '../../../ui/organism/mixins/mixins.dart';
abstract class Controller with KeyboardManager, NavigatorManager{
  closeKeyboard(context);
}