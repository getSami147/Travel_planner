import '../utils/TravelPlane Images.dart';

class TourPlane {
  String? image;

  TourPlane({
    this.image,
  });
}

List<TourPlane> getTourPlane() {
  List<TourPlane> list = [];
  list.add(TourPlane(image: TravelPlane_TourPlane));
  list.add(TourPlane(image: TravelPlane_TourPlane));
  list.add(TourPlane(image: TravelPlane_TourPlane));

  return list;
}
