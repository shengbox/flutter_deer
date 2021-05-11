import 'package:flutter_deer/generated/json/base/json_convert_content.dart';

class AccountEntity with JsonConvert<AccountEntity> {
	bool? success;
	AccountUser? user;
}

class AccountUser with JsonConvert<AccountUser> {
	String? avatar;
	String? company;
	int? id;
	AccountUserPermissions? permissions;
	String? username;
}

class AccountUserPermissions with JsonConvert<AccountUserPermissions> {
	String? role;
	String? visit;
}
