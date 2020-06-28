import 'dart:convert';

class Site {
  String siteId;
  String siteName;
  String siteLocation;
  Site({
    this.siteId,
    this.siteName,
    this.siteLocation,
  });

  Site copyWith({
    String siteId,
    String siteName,
    String siteLocation,
  }) {
    return Site(
      siteId: siteId ?? this.siteId,
      siteName: siteName ?? this.siteName,
      siteLocation: siteLocation ?? this.siteLocation,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'siteId': siteId,
      'siteName': siteName,
      'siteLocation': siteLocation,
    };
  }

  static Site fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Site(
      siteId: map['siteId'],
      siteName: map['siteName'],
      siteLocation: map['siteLocation'],
    );
  }

  String toJson() => json.encode(toMap());

  static Site fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Site(siteId: $siteId, siteName: $siteName, siteLocation: $siteLocation)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Site && o.siteId == siteId && o.siteName == siteName && o.siteLocation == siteLocation;
  }

  @override
  int get hashCode => siteId.hashCode ^ siteName.hashCode ^ siteLocation.hashCode;
}
