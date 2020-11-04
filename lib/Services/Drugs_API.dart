import 'package:http/http.dart';
import 'package:medical_reminder/Types/Drugs.dart';

class DrugsAPI {
  Future<List<String>> getDrugNameSuggestions(String drugName) async {
    if (drugName.length < 3) return List<String>();

    Response response = await get(
        "https://api.fda.gov/drug/drugsfda.json?search=$drugName&limit=1");
    if (response.statusCode != 200) return List<String>();

    Drugs drugs = drugsFromJson(response.body);
    List<String> drugNames = _convertDrugDataToNames(drugs);
    print(drugNames);
    return drugNames;
  }


  List<String> _convertDrugDataToNames(Drugs drugs) {
    List<String> names = List<String>();
    for (Drug drug in drugs.results) {
      names.addAll(drug.openfda.brandName);
      names.addAll(drug.openfda.genericName);
    }
    names = names.toSet().toList();
    return names;
  }

  int _getRxCUI(Drug drug) {

  }
}