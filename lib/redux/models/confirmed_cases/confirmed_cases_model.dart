class ConfirmedCases {
  final int latestCases;
  final DateTime lastUpdated;
  ConfirmedCases({this.latestCases, this.lastUpdated});

  factory ConfirmedCases.fromJSON(Map<String, dynamic> json) => ConfirmedCases(
        latestCases: json['latestCases'] as int,
        lastUpdated: json['lastUpdated'] as DateTime,
      );
}

class Location {
  final int id;
  final String country;
  final String latestCase;
  Location({
    this.id,
    this.country,
    this.latestCase,
  });

  factory Location.fromJSON(Map<String, dynamic> json) => Location(
        id: json['id'] as int,
        country: json['country'] as String,
        latestCase: json['latestCase'] as String,
      );
}
