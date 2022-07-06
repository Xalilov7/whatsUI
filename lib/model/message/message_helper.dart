import 'message_model.dart';

class MessageHelper {
  static var messageList = [
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj"),
    MessageItemModel("Msodiq", "Qacon oydin plazaga boramiz", "8:17", "msj")
  ];

  static MessageItemModel getCHatlist(int position){
    return messageList[position];
  }
  static var itemCount = messageList.length;

}