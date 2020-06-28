import 'dart:convert';

import 'package:flutterresponsiveweb/company.dart';

class WebUser {
  String username;
  String displayname;
  String companyId;
  String role;
  WebUser({
    this.username,
    this.displayname,
    this.companyId,
    this.role,
  });

  WebUser copyWith({
    String username,
    String displayname,
    String companyId,
    String role,
  }) {
    return WebUser(
      username: username ?? this.username,
      displayname: displayname ?? this.displayname,
      companyId: companyId ?? this.companyId,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'displayname': displayname,
      'companyId': companyId,
      'role': role,
    };
  }

  static WebUser fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return WebUser(
      username: map['username'],
      displayname: map['displayname'],
      companyId: map['companyId'],
      role: map['role'],
    );
  }

  String toJson() => json.encode(toMap());

  static WebUser fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() {
    return 'WebUser(username: $username, displayname: $displayname, companyId: $companyId, role: $role)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WebUser &&
        o.username == username &&
        o.displayname == displayname &&
        o.companyId == companyId &&
        o.role == role;
  }

  @override
  int get hashCode {
    return username.hashCode ^ displayname.hashCode ^ companyId.hashCode ^ role.hashCode;
  }
}
