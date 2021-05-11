import 'package:flutter_deer/shop/models/account_entity.dart';

accountEntityFromJson(AccountEntity data, Map<String, dynamic> json) {
	if (json['success'] != null) {
		data.success = json['success'];
	}
	if (json['user'] != null) {
		data.user = AccountUser().fromJson(json['user']);
	}
	return data;
}

Map<String, dynamic> accountEntityToJson(AccountEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['success'] = entity.success;
	data['user'] = entity.user?.toJson();
	return data;
}

accountUserFromJson(AccountUser data, Map<String, dynamic> json) {
	if (json['avatar'] != null) {
		data.avatar = json['avatar'].toString();
	}
	if (json['company'] != null) {
		data.company = json['company'].toString();
	}
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['permissions'] != null) {
		data.permissions = AccountUserPermissions().fromJson(json['permissions']);
	}
	if (json['username'] != null) {
		data.username = json['username'].toString();
	}
	return data;
}

Map<String, dynamic> accountUserToJson(AccountUser entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['avatar'] = entity.avatar;
	data['company'] = entity.company;
	data['id'] = entity.id;
	data['permissions'] = entity.permissions?.toJson();
	data['username'] = entity.username;
	return data;
}

accountUserPermissionsFromJson(AccountUserPermissions data, Map<String, dynamic> json) {
	if (json['role'] != null) {
		data.role = json['role'].toString();
	}
	if (json['visit'] != null) {
		data.visit = json['visit'].toString();
	}
	return data;
}

Map<String, dynamic> accountUserPermissionsToJson(AccountUserPermissions entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['role'] = entity.role;
	data['visit'] = entity.visit;
	return data;
}