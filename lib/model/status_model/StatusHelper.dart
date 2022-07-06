import 'StatusItemModel.dart';

class StatusHelper {
  static var statusList = [
    StatusItemModel("Eldor", "bugun 17:52", "https://media.gettyimages.com/photos/eldor-shomurodov-of-uzbekistan-celebrates-as-he-scores-his-teams-picture-id1095428038?s=612x612"),
    StatusItemModel("Conor", "bugun  17:58", "https://phantom-marca.unidadeditorial.es/afd2247eaaf99f2ff660a5b636d44f66/resize/1320/f/jpg/assets/multimedia/imagenes/2022/06/12/16549859131089.jpg"),
  ];
  static StatusItemModel getStatusItemModel(int position) {
    return statusList[position];
  }
  static var itemCount = statusList.length;
}