import 'package:flutter_deer/order/models/approval_entity.dart';

approvalEntityFromJson(ApprovalEntity data, Map<String, dynamic> json) {
	if (json['list'] != null) {
		data.items = (json['list'] as List).map((v) => ApprovalItems().fromJson(v)).toList();
	}
	if (json['total'] != null) {
		data.total = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	return data;
}

Map<String, dynamic> approvalEntityToJson(ApprovalEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['list'] =  entity.items?.map((v) => v.toJson())?.toList();
	data['total'] = entity.total;
	return data;
}

approvalItemsFromJson(ApprovalItems data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['status'] != null) {
		data.status = json['status'].toString();
	}
	if (json['bill_no'] != null) {
		data.billNo = json['bill_no'].toString();
	}
	if (json['approval_type'] != null) {
		data.approvalType = json['approval_type'].toString();
	}
	if (json['content'] != null) {
		data.content = json['content'].toString();
	}
	if (json['asset_number'] != null) {
		data.assetNumber = json['asset_number'] is String
				? int.tryParse(json['asset_number'])
				: json['asset_number'].toInt();
	}
	if (json['create_date'] != null) {
		data.createDate = json['create_date'].toString();
	}
	if (json['creator_id'] != null) {
		data.creatorId = json['creator_id'] is String
				? int.tryParse(json['creator_id'])
				: json['creator_id'].toInt();
	}
	if (json['creator_name'] != null) {
		data.creatorName = json['creator_name'].toString();
	}
	if (json['department'] != null) {
		data.department = json['department'].toString();
	}
	if (json['create_company'] != null) {
		data.createCompany = json['create_company'].toString();
	}
	if (json['assets'] != null) {
		data.assets = json['assets'];
	}
	if (json['specs'] != null) {
		data.specs = json['specs'];
	}
	if (json['todo_list'] != null) {
		data.todoList = json['todo_list'];
	}
	if (json['consumables'] != null) {
		data.consumables = json['consumables'];
	}
	if (json['completed'] != null) {
		data.completed = json['completed'];
	}
	if (json['audit_user_name'] != null) {
		data.auditUserName = json['audit_user_name'].toString();
	}
	if (json['audit_time'] != null) {
		data.auditTime = json['audit_time'].toString();
	}
	if (json['audit_remark'] != null) {
		data.auditRemark = json['audit_remark'].toString();
	}
	return data;
}

Map<String, dynamic> approvalItemsToJson(ApprovalItems entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['status'] = entity.status;
	data['bill_no'] = entity.billNo;
	data['approval_type'] = entity.approvalType;
	data['content'] = entity.content;
	data['asset_number'] = entity.assetNumber;
	data['create_date'] = entity.createDate;
	data['creator_id'] = entity.creatorId;
	data['creator_name'] = entity.creatorName;
	data['department'] = entity.department;
	data['create_company'] = entity.createCompany;
	data['assets'] = entity.assets;
	data['specs'] = entity.specs;
	data['todo_list'] = entity.todoList;
	data['consumables'] = entity.consumables;
	data['completed'] = entity.completed;
	data['audit_user_name'] = entity.auditUserName;
	data['audit_time'] = entity.auditTime;
	data['audit_remark'] = entity.auditRemark;
	return data;
}