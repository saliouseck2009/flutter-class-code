import 'package:ui/exemple1/model.dart';

class ParkRepository {
  Future<ParkModel> getPark() async {
    await Future.delayed(const Duration(seconds: 5));
    return ParkModel(
      name: 'Parc de la Ciutadella',
      description:
          'El Parc de la Ciutadella és un parc públic de Barcelona que ocupa 17,42 hectàrees al districte de Ciutat Vella. És el parc més gran de la ciutat i el segon en antiguitat. El parc va ser dissenyat per Josep Fontserè i inaugurat el 1881.',
      location: 'Barcelona',
      rating: 34,
    );
  }
}
