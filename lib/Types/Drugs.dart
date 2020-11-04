// To parse this JSON data, do
//
//     final drugs = drugsFromJson(jsonString);

import 'dart:convert';

Drugs drugsFromJson(String str) => Drugs.fromJson(json.decode(str));

String drugsToJson(Drugs data) => json.encode(data.toJson());

class Drugs {
  Drugs({
    this.meta,
    this.results,
  });

  Meta meta;
  List<Drug> results;

  factory Drugs.fromJson(Map<String, dynamic> json) => Drugs(
    meta: Meta.fromJson(json["meta"]),
    results: List<Drug>.from(json["results"].map((x) => Drug.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "meta": meta.toJson(),
    "results": List<dynamic>.from(results.map((x) => x.toJson())),
  };
}

class Meta {
  Meta({
    this.disclaimer,
    this.terms,
    this.license,
    this.lastUpdated,
    this.results,
  });

  String disclaimer;
  String terms;
  String license;
  DateTime lastUpdated;
  Results results;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
    disclaimer: json["disclaimer"],
    terms: json["terms"],
    license: json["license"],
    lastUpdated: DateTime.parse(json["last_updated"]),
    results: Results.fromJson(json["results"]),
  );

  Map<String, dynamic> toJson() => {
    "disclaimer": disclaimer,
    "terms": terms,
    "license": license,
    "last_updated": "${lastUpdated.year.toString().padLeft(4, '0')}-${lastUpdated.month.toString().padLeft(2, '0')}-${lastUpdated.day.toString().padLeft(2, '0')}",
    "results": results.toJson(),
  };
}

class Results {
  Results({
    this.skip,
    this.limit,
    this.total,
  });

  int skip;
  int limit;
  int total;

  factory Results.fromJson(Map<String, dynamic> json) => Results(
    skip: json["skip"],
    limit: json["limit"],
    total: json["total"],
  );

  Map<String, dynamic> toJson() => {
    "skip": skip,
    "limit": limit,
    "total": total,
  };
}

class Drug {
  Drug({
    this.submissions,
    this.applicationNumber,
    this.openfda,
    this.sponsorName,
    this.products,
  });

  List<Submission> submissions;
  String applicationNumber;
  Openfda openfda;
  String sponsorName;
  List<Product> products;

  factory Drug.fromJson(Map<String, dynamic> json) => Drug(
    submissions: List<Submission>.from(json["submissions"].map((x) => Submission.fromJson(x))),
    applicationNumber: json["application_number"],
    openfda: json["openfda"] == null ? null : Openfda.fromJson(json["openfda"]),
    sponsorName: json["sponsor_name"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "submissions": List<dynamic>.from(submissions.map((x) => x.toJson())),
    "application_number": applicationNumber,
    "openfda": openfda == null ? null : openfda.toJson(),
    "sponsor_name": sponsorName,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

class Openfda {
  Openfda({
    this.productNdc,
    this.packageNdc,
    this.genericName,
    this.splSetId,
    this.brandName,
    this.manufacturerName,
    this.unii,
    this.rxcui,
    this.splId,
    this.substanceName,
    this.productType,
    this.route,
    this.applicationNumber,
  });

  List<String> productNdc;
  List<String> packageNdc;
  List<String> genericName;
  List<String> splSetId;
  List<String> brandName;
  List<String> manufacturerName;
  List<String> unii;
  List<String> rxcui;
  List<String> splId;
  List<String> substanceName;
  List<String> productType;
  List<String> route;
  List<String> applicationNumber;

  factory Openfda.fromJson(Map<String, dynamic> json) => Openfda(
    productNdc: List<String>.from(json["product_ndc"].map((x) => x)),
    packageNdc: List<String>.from(json["package_ndc"].map((x) => x)),
    genericName: List<String>.from(json["generic_name"].map((x) => x)),
    splSetId: List<String>.from(json["spl_set_id"].map((x) => x)),
    brandName: List<String>.from(json["brand_name"].map((x) => x)),
    manufacturerName: List<String>.from(json["manufacturer_name"].map((x) => x)),
    unii: List<String>.from(json["unii"].map((x) => x)),
    rxcui: List<String>.from(json["rxcui"].map((x) => x)),
    splId: List<String>.from(json["spl_id"].map((x) => x)),
    substanceName: List<String>.from(json["substance_name"].map((x) => x)),
    productType: List<String>.from(json["product_type"].map((x) => x)),
    route: List<String>.from(json["route"].map((x) => x)),
    applicationNumber: List<String>.from(json["application_number"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "product_ndc": List<dynamic>.from(productNdc.map((x) => x)),
    "package_ndc": List<dynamic>.from(packageNdc.map((x) => x)),
    "generic_name": List<dynamic>.from(genericName.map((x) => x)),
    "spl_set_id": List<dynamic>.from(splSetId.map((x) => x)),
    "brand_name": List<dynamic>.from(brandName.map((x) => x)),
    "manufacturer_name": List<dynamic>.from(manufacturerName.map((x) => x)),
    "unii": List<dynamic>.from(unii.map((x) => x)),
    "rxcui": List<dynamic>.from(rxcui.map((x) => x)),
    "spl_id": List<dynamic>.from(splId.map((x) => x)),
    "substance_name": List<dynamic>.from(substanceName.map((x) => x)),
    "product_type": List<dynamic>.from(productType.map((x) => x)),
    "route": List<dynamic>.from(route.map((x) => x)),
    "application_number": List<dynamic>.from(applicationNumber.map((x) => x)),
  };
}

class Product {
  Product({
    this.marketingStatus,
    this.route,
    this.referenceStandard,
    this.brandName,
    this.activeIngredients,
    this.referenceDrug,
    this.productNumber,
    this.dosageForm,
    this.teCode,
  });

  String marketingStatus;
  String route;
  String referenceStandard;
  String brandName;
  List<ActiveIngredient> activeIngredients;
  String referenceDrug;
  String productNumber;
  String dosageForm;
  String teCode;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    marketingStatus: json["marketing_status"],
    route: json["route"],
    referenceStandard: json["reference_standard"] == null ? null : json["reference_standard"],
    brandName: json["brand_name"],
    activeIngredients: List<ActiveIngredient>.from(json["active_ingredients"].map((x) => ActiveIngredient.fromJson(x))),
    referenceDrug: json["reference_drug"],
    productNumber: json["product_number"],
    dosageForm: json["dosage_form"],
    teCode: json["te_code"] == null ? null : json["te_code"],
  );

  Map<String, dynamic> toJson() => {
    "marketing_status": marketingStatus,
    "route": route,
    "reference_standard": referenceStandard == null ? null : referenceStandard,
    "brand_name": brandName,
    "active_ingredients": List<dynamic>.from(activeIngredients.map((x) => x.toJson())),
    "reference_drug": referenceDrug,
    "product_number": productNumber,
    "dosage_form": dosageForm,
    "te_code": teCode == null ? null : teCode,
  };
}

class ActiveIngredient {
  ActiveIngredient({
    this.strength,
    this.name,
  });

  String strength;
  String name;

  factory ActiveIngredient.fromJson(Map<String, dynamic> json) => ActiveIngredient(
    strength: json["strength"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "strength": strength,
    "name": name,
  };
}

class Submission {
  Submission({
    this.submissionPropertyType,
    this.submissionType,
    this.submissionStatusDate,
    this.submissionStatus,
    this.submissionNumber,
    this.submissionClassCodeDescription,
    this.reviewPriority,
    this.submissionClassCode,
    this.applicationDocs,
  });

  List<SubmissionPropertyType> submissionPropertyType;
  String submissionType;
  String submissionStatusDate;
  String submissionStatus;
  String submissionNumber;
  String submissionClassCodeDescription;
  String reviewPriority;
  String submissionClassCode;
  List<ApplicationDoc> applicationDocs;

  factory Submission.fromJson(Map<String, dynamic> json) => Submission(
    submissionPropertyType: json["submission_property_type"] == null ? null : List<SubmissionPropertyType>.from(json["submission_property_type"].map((x) => SubmissionPropertyType.fromJson(x))),
    submissionType: json["submission_type"],
    submissionStatusDate: json["submission_status_date"],
    submissionStatus: json["submission_status"],
    submissionNumber: json["submission_number"],
    submissionClassCodeDescription: json["submission_class_code_description"] == null ? null : json["submission_class_code_description"],
    reviewPriority: json["review_priority"] == null ? null : json["review_priority"],
    submissionClassCode: json["submission_class_code"] == null ? null : json["submission_class_code"],
    applicationDocs: json["application_docs"] == null ? null : List<ApplicationDoc>.from(json["application_docs"].map((x) => ApplicationDoc.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "submission_property_type": submissionPropertyType == null ? null : List<dynamic>.from(submissionPropertyType.map((x) => x.toJson())),
    "submission_type": submissionType,
    "submission_status_date": submissionStatusDate,
    "submission_status": submissionStatus,
    "submission_number": submissionNumber,
    "submission_class_code_description": submissionClassCodeDescription == null ? null : submissionClassCodeDescription,
    "review_priority": reviewPriority == null ? null : reviewPriority,
    "submission_class_code": submissionClassCode == null ? null : submissionClassCode,
    "application_docs": applicationDocs == null ? null : List<dynamic>.from(applicationDocs.map((x) => x.toJson())),
  };
}

class ApplicationDoc {
  ApplicationDoc({
    this.date,
    this.id,
    this.type,
    this.url,
  });

  String date;
  String id;
  String type;
  String url;

  factory ApplicationDoc.fromJson(Map<String, dynamic> json) => ApplicationDoc(
    date: json["date"],
    id: json["id"],
    type: json["type"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "date": date,
    "id": id,
    "type": type,
    "url": url,
  };
}

class SubmissionPropertyType {
  SubmissionPropertyType({
    this.id,
  });

  String id;

  factory SubmissionPropertyType.fromJson(Map<String, dynamic> json) => SubmissionPropertyType(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}
