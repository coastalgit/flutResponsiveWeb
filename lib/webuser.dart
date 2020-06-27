import 'dart:convert';

class WebUser {
  String username;
  String displayname;
  String role;
  WebUser({
    this.username,
    this.displayname,
    this.role,
  });

  WebUser copyWith({
    String username,
    String displayname,
    String role,
  }) {
    return WebUser(
      username: username ?? this.username,
      displayname: displayname ?? this.displayname,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'username': username,
      'displayname': displayname,
      'role': role,
    };
  }

  static WebUser fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return WebUser(
      username: map['username'],
      displayname: map['displayname'],
      role: map['role'],
    );
  }

  String toJson() => json.encode(toMap());

  static WebUser fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'webuser(username: $username, displayname: $displayname, role: $role)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is WebUser && o.username == username && o.displayname == displayname && o.role == role;
  }

  @override
  int get hashCode => username.hashCode ^ displayname.hashCode ^ role.hashCode;
}
