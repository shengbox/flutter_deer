import 'package:flutter_deer/generated/json/base/json_convert_content.dart';
import 'package:flutter_deer/generated/json/base/json_field.dart';

class AssetOptionsEntity with JsonConvert<AssetOptionsEntity> {
	List<AssetOptionsAreas>? areas;
	List<AssetOptionsEmployees>? employees;
	List<AssetOptionsAccounts>? accounts;
	List<AssetOptionsCompanies>? companies;
	@JSONField(name: "dept_tree")
	List<AssetOptionsDeptTree>? deptTree;
	List<String>? sources;
	@JSONField(name: "asset_type_tree")
	List<AssetOptionsAssetTypeTree>? assetTypeTree;
	@JSONField(name: "specs_tree")
	List<AssetOptionsSpecsTree>? specsTree;
}

class AssetOptionsAreas with JsonConvert<AssetOptionsAreas> {
	int? id;
	String? code;
	String? name;
	bool? disabled;
}

class AssetOptionsEmployees with JsonConvert<AssetOptionsEmployees> {
	int? id;
	String? name;
	String? phone;
	String? email;
	bool? male;
	bool? status;
	String? avatar;
	@JSONField(name: "department_id")
	int? departmentId;
	@JSONField(name: "department_name")
	String? departmentName;
	dynamic? roles;
}

class AssetOptionsAccounts with JsonConvert<AssetOptionsAccounts> {
	int? id;
	String? name;
}

class AssetOptionsCompanies with JsonConvert<AssetOptionsCompanies> {
	int? id;
	String? name;
}

class AssetOptionsDeptTree with JsonConvert<AssetOptionsDeptTree> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	List<AssetOptionsDeptTreeChildren>? children;
}

class AssetOptionsDeptTreeChildren with JsonConvert<AssetOptionsDeptTreeChildren> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	List<AssetOptionsDeptTreeChildrenChildren>? children;
}

class AssetOptionsDeptTreeChildrenChildren with JsonConvert<AssetOptionsDeptTreeChildrenChildren> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	dynamic? children;
}

class AssetOptionsAssetTypeTree with JsonConvert<AssetOptionsAssetTypeTree> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	List<AssetOptionsAssetTypeTreeChildren>? children;
}

class AssetOptionsAssetTypeTreeChildren with JsonConvert<AssetOptionsAssetTypeTreeChildren> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	dynamic? children;
}

class AssetOptionsSpecsTree with JsonConvert<AssetOptionsSpecsTree> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	dynamic? dataRef;
	List<AssetOptionsSpecsTreeChildren>? children;
}

class AssetOptionsSpecsTreeChildren with JsonConvert<AssetOptionsSpecsTreeChildren> {
	String? title;
	String? value;
	String? key;
	bool? disabled;
	bool? isLeaf;
	@JSONField(name: "data_ref")
	AssetOptionsSpecsTreeChildrenDataRef? dataRef;
	dynamic? children;
}

class AssetOptionsSpecsTreeChildrenDataRef with JsonConvert<AssetOptionsSpecsTreeChildrenDataRef> {
	int? id;
	String? image;
	@JSONField(name: "asset_name")
	String? assetName;
	String? specs;
	@JSONField(name: "measure_unit")
	String? measureUnit;
	int? money;
	bool? disabled;
	@JSONField(name: "asset_type_id")
	int? assetTypeId;
	@JSONField(name: "asset_type_name")
	String? assetTypeName;
}
