import 'CallitemModal.dart';

class CallHelper {
  static var callList = [
    CallItemModel("Ronaldo", "10 minut ago", "https://cdn.vox-cdn.com/thumbor/gS5G1kGiqupdpEEu98CCpiDkpJ4=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/18342894/891903860.jpg.jpg"),
    CallItemModel("Eldor", "  1 hour ago", "https://media.gettyimages.com/photos/eldor-shomurodov-of-uzbekistan-celebrates-as-he-scores-his-teams-picture-id1095428038?s=612x612"),
    CallItemModel("Khabib", " 34 minut ago", "https://img.bleacherreport.net/img/images/photos/003/825/771/hi-res-8fcf8b10141fe90882cf7b271e69f217_crop_north.jpg?1567135957&w=3072&h=2048"),
    CallItemModel("Conor", " 59 minut ago", "https://phantom-marca.unidadeditorial.es/afd2247eaaf99f2ff660a5b636d44f66/resize/1320/f/jpg/assets/multimedia/imagenes/2022/06/12/16549859131089.jpg"),
  ];

  static CallItemModel getCallItem(int position){
    return callList[position];
  }
  static var itemCount = callList.length;
}