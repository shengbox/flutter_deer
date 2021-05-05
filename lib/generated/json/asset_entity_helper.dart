import 'package:flutter_deer/order/models/asset_entity.dart';

assetEntityFromJson(AssetEntity data, Map<String, dynamic> json) {
	if (json['total'] != null) {
		data.totalCount = json['total'] is String
				? int.tryParse(json['total'])
				: json['total'].toInt();
	}
	if (json['data'] != null) {
		data.items = (json['data'] as List).map((v) => AssetItems().fromJson(v)).toList();
	}
	return data;
}

Map<String, dynamic> assetEntityToJson(AssetEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['total'] = entity.totalCount;
	data['data'] =  entity.items?.map((v) => v.toJson())?.toList();
	return data;
}

assetItemsFromJson(AssetItems data, Map<String, dynamic> json) {
	if (json['id'] != null) {
		data.id = json['id'] is String
				? int.tryParse(json['id'])
				: json['id'].toInt();
	}
	if (json['name'] != null) {
		data.name = json['name'].toString();
	}
	if (json['asset_type_name'] != null) {
		data.assetTypeName = json['asset_type_name'].toString();
	}
	if (json['barcode'] != null) {
		data.barcode = json['barcode'].toString();
	}
	if (json['address'] != null) {
		data.address = json['address'].toString();
	}
	if (json['specs'] != null) {
		data.specs = json['specs'].toString();
	}
	if (json['image'] != null) {
		data.image = json['image'].toString();
	}
	if (json['comment'] != null) {
		data.comment = json['comment'].toString();
	}
	if (json['money'] != null) {
		data.money = json['money'].toString();
	}
	return data;
}

Map<String, dynamic> assetItemsToJson(AssetItems entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['id'] = entity.id;
	data['name'] = entity.name;
	data['asset_type_name'] = entity.assetTypeName;
	data['barcode'] = entity.barcode;
	data['address'] = entity.address;
	data['specs'] = entity.specs;
	data['image'] = entity.image;
	data['comment'] = entity.comment;
	data['money'] = entity.money;
	return data;
}