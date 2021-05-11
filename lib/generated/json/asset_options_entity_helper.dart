import 'package:flutter_deer/goods/models/asset_options_entity.dart';

assetOptionsEntityFromJson(AssetOptionsEntity data, Map<String, dynamic> json) {
	if (json['areas'] != null) {
		data.areas = (json['areas'] as List).map((v) => AssetOptionsAreas().fromJson(v)).toList();
	}
	if (json['employees'] != null) {
		data.employees = (json['employees'] as List).map((v) => AssetOptionsEmployees().fromJson(v)).toList();
	}
	if (json['accounts'] != null) {
		data.accounts = (json['accounts'] as List).map((v) => AssetOptionsAccounts().fromJson(v)).toList();
	}
	if (json['companies'] != null) {
		data.companies = (json['companies'] as List).map((v) => AssetOptionsCompanies().fromJson(v)).toList();
	}
	if (json['dept_tree'] != null) {
		data.deptTree = (json['dept_tree'] as List).map((v) => AssetOptionsDeptTree().fromJson(v)).toList();
	}
	if (json['sources'] != null) {
		data.sources = (json['sources'] as List).map((v) => v.toString()).toList().cast<String>();
	}
	if (json['asset_type_tree'] != null) {
		data.assetTypeTree = (json['asset_type_tree'] as List).map((v) => AssetOptionsAssetTypeTree().fromJson(v)).toList();
	}
	if (json['specs_tree'] != null) {
		data.specsTree = (json['specs_tree'] as List).map((v) => AssetOptionsSpecsTree().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetOptionsEntityToJson(AssetOptionsEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['areas'] =  entity.areas?.map((v) => v.toJson())?.toList();
	data['employees'] =  entity.employees?.map((v) => v.toJson())?.toList();
	data['accounts'] =  entity.accounts?.map((v) => v.toJson())?.toList();
	data['companies'] =  entity.companies?.map((v) => v.toJson())?.toList();
	data['dept_tree'] =  entity.deptTree?.map((v) => v.toJson())?.toList();
	data['sources'] = entity.sources;
	data['asset_type_tree'] =  entity.assetTypeTree?.map((v) => v.toJson())?.toList();
	data['specs_tree'] =  entity.specsTree?.map((v) => v.toJson())?.toList();
	return data;
}

assetOptionsAreasFromJson(AssetOptionsAreas data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['code'] != null) {
		data.code = json['code'].toString();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	return data;
}

Map<String, dynamic> assetOptionsAreasToJson(AssetOptionsAreas entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['code'] = entity.code;
	data['name'] = entity.name;
	data['disabled'] = entity.disabled;
	return data;
}

assetOptionsEmployeesFromJson(AssetOptionsEmployees data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['phone'] != null) {
		data.phone = json['phone'].toString();
	}
	if (json['email'] != null) {
		data.email = json['email'].toString();
	}
	if (json['male'] != null) {
		data.male = json['male'];
	}
	if (json['status'] != null) {
		data.status = json['status'];
	}
	if (json['avatar'] != null) {
		data.avatar = json['avatar'].toString();
	}
	if (json['department_id'] != null) {
		data.departmentId = json['department_id'] is String
				? int.tryParse(json['department_id'])
				: json['department_id'].toInt();
	}
	if (json['department_name'] != null) {
		data.departmentName = json['department_name'].toString();
	}
	if (json['roles'] != null) {
		data.roles = json['roles'];
	}
	return data;
}

Map<String, dynamic> assetOptionsEmployeesToJson(AssetOptionsEmployees entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['phone'] = entity.phone;
	data['email'] = entity.email;
	data['male'] = entity.male;
	data['status'] = entity.status;
	data['avatar'] = entity.avatar;
	data['department_id'] = entity.departmentId;
	data['department_name'] = entity.departmentName;
	data['roles'] = entity.roles;
	return data;
}

assetOptionsAccountsFromJson(AssetOptionsAccounts data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	return data;
}

Map<String, dynamic> assetOptionsAccountsToJson(AssetOptionsAccounts entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

assetOptionsCompaniesFromJson(AssetOptionsCompanies data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	return data;
}

Map<String, dynamic> assetOptionsCompaniesToJson(AssetOptionsCompanies entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	return data;
}

assetOptionsDeptTreeFromJson(AssetOptionsDeptTree data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = (json['children'] as List).map((v) => AssetOptionsDeptTreeChildren().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetOptionsDeptTreeToJson(AssetOptionsDeptTree entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] =  entity.children?.map((v) => v.toJson())?.toList();
	return data;
}

assetOptionsDeptTreeChildrenFromJson(AssetOptionsDeptTreeChildren data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = (json['children'] as List).map((v) => AssetOptionsDeptTreeChildrenChildren().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetOptionsDeptTreeChildrenToJson(AssetOptionsDeptTreeChildren entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] =  entity.children?.map((v) => v.toJson())?.toList();
	return data;
}

assetOptionsDeptTreeChildrenChildrenFromJson(AssetOptionsDeptTreeChildrenChildren data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = json['children'];
	}
	return data;
}

Map<String, dynamic> assetOptionsDeptTreeChildrenChildrenToJson(AssetOptionsDeptTreeChildrenChildren entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] = entity.children;
	return data;
}

assetOptionsAssetTypeTreeFromJson(AssetOptionsAssetTypeTree data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = (json['children'] as List).map((v) => AssetOptionsAssetTypeTreeChildren().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetOptionsAssetTypeTreeToJson(AssetOptionsAssetTypeTree entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] =  entity.children?.map((v) => v.toJson())?.toList();
	return data;
}

assetOptionsAssetTypeTreeChildrenFromJson(AssetOptionsAssetTypeTreeChildren data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = json['children'];
	}
	return data;
}

Map<String, dynamic> assetOptionsAssetTypeTreeChildrenToJson(AssetOptionsAssetTypeTreeChildren entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] = entity.children;
	return data;
}

assetOptionsSpecsTreeFromJson(AssetOptionsSpecsTree data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = json['data_ref'];
	}
	if (json['children'] != null) {
		data.children = (json['children'] as List).map((v) => AssetOptionsSpecsTreeChildren().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetOptionsSpecsTreeToJson(AssetOptionsSpecsTree entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef;
	data['children'] =  entity.children?.map((v) => v.toJson())?.toList();
	return data;
}

assetOptionsSpecsTreeChildrenFromJson(AssetOptionsSpecsTreeChildren data, Map<String, dynamic> json) {
	if (json['title'] != null) {
		data.title = json['title'].toString();
	}
	if (json['value'] != null) {
		data.value = json['value'].toString();
	}
	if (json['key'] != null) {
		data.key = json['key'].toString();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['isLeaf'] != null) {
		data.isLeaf = json['isLeaf'];
	}
	if (json['data_ref'] != null) {
		data.dataRef = AssetOptionsSpecsTreeChildrenDataRef().fromJson(json['data_ref']);
	}
	if (json['children'] != null) {
		data.children = json['children'];
	}
	return data;
}

Map<String, dynamic> assetOptionsSpecsTreeChildrenToJson(AssetOptionsSpecsTreeChildren entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['title'] = entity.title;
	data['value'] = entity.value;
	data['key'] = entity.key;
	data['disabled'] = entity.disabled;
	data['isLeaf'] = entity.isLeaf;
	data['data_ref'] = entity.dataRef?.toJson();
	data['children'] = entity.children;
	return data;
}

assetOptionsSpecsTreeChildrenDataRefFromJson(AssetOptionsSpecsTreeChildrenDataRef data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['asset_name'] != null) {
		data.assetName = json['asset_name'].toString();
	}
	if (json['specs'] != null) {
		data.specs = json['specs'].toString();
	}
	if (json['measure_unit'] != null) {
		data.measureUnit = json['measure_unit'].toString();
	}
	if (json['money'] != null) {
		data.money = json['money'] is String
				? int.tryParse(json['money'])
				: json['money'].toInt();
	}
	if (json['disabled'] != null) {
		data.disabled = json['disabled'];
	}
	if (json['asset_type_id'] != null) {
		data.assetTypeId = json['asset_type_id'] is String
				? int.tryParse(json['asset_type_id'])
				: json['asset_type_id'].toInt();
	}
	if (json['asset_type_name'] != null) {
		data.assetTypeName = json['asset_type_name'].toString();
	}
	return data;
}

Map<String, dynamic> assetOptionsSpecsTreeChildrenDataRefToJson(AssetOptionsSpecsTreeChildrenDataRef entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['image'] = entity.image;
	data['asset_name'] = entity.assetName;
	data['specs'] = entity.specs;
	data['measure_unit'] = entity.measureUnit;
	data['money'] = entity.money;
	data['disabled'] = entity.disabled;
	data['asset_type_id'] = entity.assetTypeId;
	data['asset_type_name'] = entity.assetTypeName;
	return data;
}