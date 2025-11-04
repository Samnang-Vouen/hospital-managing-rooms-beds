import 'bed.dart';
import 'enum.dart';
import 'patient.dart';

/// Abstract base class for all rooms
abstract class Room {
  final String roomType;
  final int roomNumber;
  final List<Bed> beds;

  Room(this.roomType, this.roomNumber, this.beds);
}

/// ===== SUBCLASSES =====

class EmergencyRoom extends Room {
  EmergencyRoom(int roomNumber, List<Bed> beds)
      : super('Emergency', roomNumber, beds);
}

class ICU extends Room {
  ICU(int roomNumber, List<Bed> beds) : super('ICU', roomNumber, beds);
}

class ICUVIP extends Room {
  ICUVIP(int roomNumber, List<Bed> beds) : super('ICUVIP', roomNumber, beds);
}

class ICUVVIP extends Room {
  ICUVVIP(int roomNumber, List<Bed> beds) : super('ICUVVIP', roomNumber, beds);
}

class GeneralRoom extends Room {
  GeneralRoom(int roomNumber, List<Bed> beds)
      : super('General', roomNumber, beds);
}

class GeneralVIP extends Room {
  GeneralVIP(int roomNumber, List<Bed> beds)
      : super('GeneralVIP', roomNumber, beds);
}
