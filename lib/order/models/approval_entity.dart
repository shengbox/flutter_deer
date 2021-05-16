import 'package:flutter_deer/generated/json/base/json_convert_content.dart';
import 'package:flutter_deer/generated/json/base/json_field.dart';

class ApprovalEntity with JsonConvert<ApprovalEntity> {
	@JSONField(name: "list")
	List<ApprovalItems>? items;
	int? total;
}

class ApprovalItems with JsonConvert<ApprovalItems> {
	int? id;
	String? status;
	@JSONField(name: "bill_no")
	String? billNo;
	@JSONField(name: "approval_type")
	String? approvalType;
	String? content;
	@JSONField(name: "asset_number")
	int? assetNumber;
	@JSONField(name: "create_date")
	String? createDate;
	@JSONField(name: "creator_id")
	int? creatorId;
	@JSONField(name: "creator_name")
	String? creatorName;
	String? department;
	@JSONField(name: "create_company")
	String? createCompany;
	dynamic? assets;
	dynamic? specs;
	@JSONField(name: "todo_list")
	dynamic? todoList;
	dynamic? consumables;
	bool? completed;
	@JSONField(name: "audit_user_name")
	String? auditUserName;
	@JSONField(name: "audit_time")
	String? auditTime;
	@JSONField(name: "audit_remark")
	String? auditRemark;
}
