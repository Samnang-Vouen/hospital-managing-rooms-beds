import 'enum.dart';
import 'package:uuid/uuid.dart';

var uuid = Uuid();

class Patient {
  String patientId;
  final String patientName;
  final PatientGender gender;
  final DateTime entryDate;
  final DateTime? leaveDate;
  PatientCode code;
  final bool isVIP;
  final String? currentBedId;

  Patient(
      {String? patientId,
      required this.patientName,
      required this.gender,
      required this.entryDate,
      required this.code,
      required this.isVIP,
      this.currentBedId,
      this.leaveDate})
      : patientId = patientId ?? uuid.v4();

  void updatePatientCode(PatientCode newCode) {
    code = newCode;
  }
}