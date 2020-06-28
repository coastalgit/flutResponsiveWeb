import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:flutterresponsiveweb/site.dart';

class Company {
  String companyId;
  String companyName;
  List<Site> sites;
  Company({
    this.companyId,
    this.companyName,
    this.sites,
  });

  Company copyWith({
    String companyId,
    String companyName,
    List<Site> sites,
  }) {
    return Company(
      companyId: companyId ?? this.companyId,
      companyName: companyName ?? this.companyName,
      sites: sites ?? this.sites,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'companyId': companyId,
      'companyName': companyName,
      'sites': sites?.map((x) => x?.toMap())?.toList(),
    };
  }

  static Company fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Company(
      companyId: map['companyId'],
      companyName: map['companyName'],
      sites: List<Site>.from(map['sites']?.map((x) => Site.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  static Company fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Company(companyId: $companyId, companyName: $companyName, sites: $sites)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Company && o.companyId == companyId && o.companyName == companyName && listEquals(o.sites, sites);
  }

  @override
  int get hashCode => companyId.hashCode ^ companyName.hashCode ^ sites.hashCode;
}
