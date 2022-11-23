<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

OS Geocoder is Package for Showing Full Addres From Your Lattitude and Longitude

## Features

- Show Full Address Without API
- Clear Information

## Getting started


## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder. 

```dart
OctaGeoCoderEntity? result = await OctaGeocoder().getAddress(lattitude: 221.34423, longitude: -23.44231);
return result?.displayName ?? "Not Found";
```

## Additional information

##OctaGeoCoderEntity
```dart
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
```

##Adress
```dart
  String road;
  String village;
  String state;
  String iso31662Lvl4;
  String postcode;
  String country;
  String countryCode;
```
