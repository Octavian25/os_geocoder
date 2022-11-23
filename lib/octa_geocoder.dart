// To parse this JSON data, do
//
//     final octaGeoCoderEntity = octaGeoCoderEntityFromJson(jsonString);

import 'dart:convert';

OctaGeoCoderEntity octaGeoCoderEntityFromJson(Map<String, dynamic> str) =>
    OctaGeoCoderEntity.fromJson(str);

String octaGeoCoderEntityToJson(OctaGeoCoderEntity data) => json.encode(data.toJson());

class OctaGeoCoderEntity {
  OctaGeoCoderEntity({
    required this.placeId,
    required this.licence,
    required this.osmType,
    required this.osmId,
    required this.lat,
    required this.lon,
    required this.placeRank,
    required this.category,
    required this.type,
    required this.importance,
    required this.addresstype,
    required this.name,
    required this.displayName,
    required this.address,
    required this.boundingbox,
  });

  int placeId;
  String licence;
  String osmType;
  int osmId;
  String lat;
  String lon;
  int placeRank;
  String category;
  String type;
  double importance;
  String addresstype;
  String name;
  String displayName;
  Address address;
  List<String> boundingbox;

  OctaGeoCoderEntity copyWith({
    int? placeId,
    String? licence,
    String? osmType,
    int? osmId,
    String? lat,
    String? lon,
    int? placeRank,
    String? category,
    String? type,
    double? importance,
    String? addresstype,
    String? name,
    String? displayName,
    Address? address,
    List<String>? boundingbox,
  }) =>
      OctaGeoCoderEntity(
        placeId: placeId ?? this.placeId,
        licence: licence ?? this.licence,
        osmType: osmType ?? this.osmType,
        osmId: osmId ?? this.osmId,
        lat: lat ?? this.lat,
        lon: lon ?? this.lon,
        placeRank: placeRank ?? this.placeRank,
        category: category ?? this.category,
        type: type ?? this.type,
        importance: importance ?? this.importance,
        addresstype: addresstype ?? this.addresstype,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        address: address ?? this.address,
        boundingbox: boundingbox ?? this.boundingbox,
      );

  factory OctaGeoCoderEntity.fromJson(Map<String, dynamic> json) => OctaGeoCoderEntity(
        placeId: json["place_id"],
        licence: json["licence"],
        osmType: json["osm_type"],
        osmId: json["osm_id"],
        lat: json["lat"],
        lon: json["lon"],
        placeRank: json["place_rank"],
        category: json["category"],
        type: json["type"],
        importance: json["importance"].toDouble(),
        addresstype: json["addresstype"],
        name: json["name"],
        displayName: json["display_name"],
        address: Address.fromJson(json["address"]),
        boundingbox: List<String>.from(json["boundingbox"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "place_id": placeId,
        "licence": licence,
        "osm_type": osmType,
        "osm_id": osmId,
        "lat": lat,
        "lon": lon,
        "place_rank": placeRank,
        "category": category,
        "type": type,
        "importance": importance,
        "addresstype": addresstype,
        "name": name,
        "display_name": displayName,
        "address": address.toJson(),
        "boundingbox": List<dynamic>.from(boundingbox.map((x) => x)),
      };
}

class Address {
  Address({
    required this.road,
    required this.village,
    required this.state,
    required this.iso31662Lvl4,
    required this.postcode,
    required this.country,
    required this.countryCode,
  });

  String road;
  String village;
  String state;
  String iso31662Lvl4;
  String postcode;
  String country;
  String countryCode;

  Address copyWith({
    String? road,
    String? village,
    String? state,
    String? iso31662Lvl4,
    String? postcode,
    String? country,
    String? countryCode,
  }) =>
      Address(
        road: road ?? this.road,
        village: village ?? this.village,
        state: state ?? this.state,
        iso31662Lvl4: iso31662Lvl4 ?? this.iso31662Lvl4,
        postcode: postcode ?? this.postcode,
        country: country ?? this.country,
        countryCode: countryCode ?? this.countryCode,
      );

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        road: json["road"],
        village: json["village"],
        state: json["state"],
        iso31662Lvl4: json["ISO3166-2-lvl4"],
        postcode: json["postcode"],
        country: json["country"],
        countryCode: json["country_code"],
      );

  Map<String, dynamic> toJson() => {
        "road": road,
        "village": village,
        "state": state,
        "ISO3166-2-lvl4": iso31662Lvl4,
        "postcode": postcode,
        "country": country,
        "country_code": countryCode,
      };
}
