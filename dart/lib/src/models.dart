/// Response models for the India Pincode Lookup API.

/// API Response wrapper.
class IndiapincodeResponse {
  final String status;
  final dynamic error;
  final IndiapincodeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  IndiapincodeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory IndiapincodeResponse.fromJson(Map<String, dynamic> json) => IndiapincodeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? IndiapincodeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the India Pincode Lookup API.

class IndiapincodeData {
  num? count;
  num? totalMatches;
  List<IndiapincodeDataResultsItem>? results;

  IndiapincodeData({
    this.count,
    this.totalMatches,
    this.results,
  });

  factory IndiapincodeData.fromJson(Map<String, dynamic> json) => IndiapincodeData(
      count: json['count'],
      totalMatches: json['totalMatches'],
      results: (json['results'] as List?)?.map((e) => IndiapincodeDataResultsItem.fromJson(e)).toList(),
    );
}

class IndiapincodeDataResultsItem {
  String? pincode;
  String? district;
  String? state;
  String? stateCode;
  String? circle;
  String? region;
  String? division;
  num? latitude;
  num? longitude;
  String? timezone;
  num? postOfficeCount;
  num? deliveryOfficeCount;
  List<IndiapincodeDataResultsItemPostofficesItem>? postOffices;
  List<IndiapincodeDataResultsItemNearbyItem>? nearby;

  IndiapincodeDataResultsItem({
    this.pincode,
    this.district,
    this.state,
    this.stateCode,
    this.circle,
    this.region,
    this.division,
    this.latitude,
    this.longitude,
    this.timezone,
    this.postOfficeCount,
    this.deliveryOfficeCount,
    this.postOffices,
    this.nearby,
  });

  factory IndiapincodeDataResultsItem.fromJson(Map<String, dynamic> json) => IndiapincodeDataResultsItem(
      pincode: json['pincode'],
      district: json['district'],
      state: json['state'],
      stateCode: json['stateCode'],
      circle: json['circle'],
      region: json['region'],
      division: json['division'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
      postOfficeCount: json['postOfficeCount'],
      deliveryOfficeCount: json['deliveryOfficeCount'],
      postOffices: (json['postOffices'] as List?)?.map((e) => IndiapincodeDataResultsItemPostofficesItem.fromJson(e)).toList(),
      nearby: (json['nearby'] as List?)?.map((e) => IndiapincodeDataResultsItemNearbyItem.fromJson(e)).toList(),
    );
}

class IndiapincodeDataResultsItemPostofficesItem {
  String? name;
  String? officeType;
  bool? delivery;
  num? latitude;
  num? longitude;

  IndiapincodeDataResultsItemPostofficesItem({
    this.name,
    this.officeType,
    this.delivery,
    this.latitude,
    this.longitude,
  });

  factory IndiapincodeDataResultsItemPostofficesItem.fromJson(Map<String, dynamic> json) => IndiapincodeDataResultsItemPostofficesItem(
      name: json['name'],
      officeType: json['officeType'],
      delivery: json['delivery'],
      latitude: json['latitude'],
      longitude: json['longitude'],
    );
}

class IndiapincodeDataResultsItemNearbyItem {
  String? pincode;
  String? district;
  String? state;
  num? distanceKm;

  IndiapincodeDataResultsItemNearbyItem({
    this.pincode,
    this.district,
    this.state,
    this.distanceKm,
  });

  factory IndiapincodeDataResultsItemNearbyItem.fromJson(Map<String, dynamic> json) => IndiapincodeDataResultsItemNearbyItem(
      pincode: json['pincode'],
      district: json['district'],
      state: json['state'],
      distanceKm: json['distanceKm'],
    );
}

class IndiapincodeRequest {
  String? pincode;
  String? office;
  String? district;
  String? state;
  bool? nearby;
  double? radius;
  int? limit;

  IndiapincodeRequest({
    this.pincode,
    this.office,
    this.district,
    this.state,
    this.nearby,
    this.radius,
    this.limit,
  });

  Map<String, dynamic> toJson() => {
      if (pincode != null) 'pincode': pincode,
      if (office != null) 'office': office,
      if (district != null) 'district': district,
      if (state != null) 'state': state,
      if (nearby != null) 'nearby': nearby,
      if (radius != null) 'radius': radius,
      if (limit != null) 'limit': limit,
    };
}
