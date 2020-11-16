import 'package:medical_reminder/Types/Alerts_Data.dart';
import 'package:medical_reminder/Types/Firebase_Data.dart';

import 'Firebase/Database.dart';

class AlertServices {
  static final int minAmount = 5;

  static Future checkForLowMeds() async {
      Database database = Database();
      List<Medication> medications = await database.getCurrentMedication();
      List<Alert> alerts = await  database.getAlerts();
      for(var med in medications) {
        if(med.amountLeft < minAmount && alerts.indexWhere((element) => element.medId == med.medId) == -1) {
          await database.addAlert(med, true, true);
        }
      }

  }
}