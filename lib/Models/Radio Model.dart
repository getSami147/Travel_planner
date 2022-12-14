import '../utils/TravelPlane Strings.dart';

// RadioModel ..........................................>>>>
class RadioModel {
  String? RadioText;
  int? Value;

  RadioModel({this.RadioText, this.Value});
}

final radioModel = [
  RadioModel(
    RadioText: CustomizePlane_Economy,
    Value: 1,
  ),
  RadioModel(
    RadioText: CustomizePlane_Business,
    Value: 2,
  ),
  RadioModel(
    RadioText: CustomizePlane_AlreadyPurchse,
    Value: 3,
  ),
];

// RadioTransperation_Model ..........................................>>>>
class RadioTransperation_Model {
  String? RadioText;
  int? Value;

  RadioTransperation_Model({this.RadioText, this.Value});
}

final radioTransperation_Model = [
  RadioModel(RadioText: CustomizePlane_RetingVehical, Value: 1),
  RadioModel(RadioText: CustomizePlane_Privatevehicle, Value: 2),
  RadioModel(RadioText: CustomizePlane_Around_Vehicle, Value: 3),
];

// Destination_option_Model ..........................................>>>>
class Destination_option_Model {
  String? RadioText;
  int? Value;

  Destination_option_Model({this.RadioText, this.Value});
}

final destination_option_Model = [
  RadioModel(RadioText: CustomizePlane_UrbanAreas, Value: 1),
  RadioModel(RadioText: CustomizePlane_SmallTowns, Value: 2),
  RadioModel(RadioText: CustomizePlane_RuralAreas, Value: 3),
  RadioModel(RadioText: CustomizePlane_Isolated_Communities, Value: 4),
];

// PhysicalPreparation_Model ..........................................>>>>
class PhysicalPreparation_Model {
  String? RadioText;
  int? Value;

  PhysicalPreparation_Model({this.RadioText, this.Value});
}

final physicalPreparation_Model = [
  RadioModel(RadioText: 'Easy', Value: 1),
  RadioModel(RadioText: 'Moderate ', Value: 2),
  RadioModel(RadioText: 'Challenging ', Value: 3),
];

// TravelStyle_Model ..........................................>>>>
class TravelStyle_Model {
  String? RadioText;
  int? Value;

  TravelStyle_Model({this.RadioText, this.Value});
}

final travelStyle_Model = [
  RadioModel(RadioText: 'Breadth', Value: 1),
  RadioModel(RadioText: 'Depth  ', Value: 2),
];

// TravelStyle_Model ..........................................>>>>
class CustomizPlane16_Model {
  String? RadioText;
  int? Value;

  CustomizPlane16_Model({this.RadioText, this.Value});
}

final customizPlane16_Model = [
  RadioModel(RadioText: CustomizePlane_Email, Value: 1),
  RadioModel(RadioText: CustomizePlane_phone, Value: 2),
];
