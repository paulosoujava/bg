import '../../../core/core.dart';
import '../../../ui/ui.dart';

abstract class Controller with KeyboardManager, NavigatorManager{
  closeKeyboard(context);
  void setValue(String value, Types type);
  void dispose();
}