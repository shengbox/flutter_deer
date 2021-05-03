import 'package:flutter_deer/order/models/asset_entity.dart';

assetEntityFromJson(AssetEntity data, Map<String, dynamic> json) {
  if (json['total_count'] != null) {
    data.totalCount = json['total_count'] is String
        ? int.tryParse(json['total_count'])
        : json['total_count'].toInt();
  }
  if (json['data'] != null) {
    data.items =
        (json['data'] as List).map((v) => AssetItems().fromJson(v)).toList();
  }
  return data;
}

Map<String, dynamic> assetEntityToJson(AssetEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['total'] = entity.totalCount;
  data['items'] = entity.items?.map((v) => v.toJson())?.toList();
  return data;
}

assetItemsFromJson(AssetItems data, Map<String, dynamic> json) {
  if (json['id'] != null) {
    data.id =
        json['id'] is String ? int.tryParse(json['id']) : json['id'].toInt();
  }
  if (json['name'] != null) {
    data.name = json['name'].toString();
  }
  if (json['barcode'] != null) {
    data.barcode = json['barcode'].toString();
  }
  if (json['asset_type_name'] != null) {
    data.assetTypeName = json['asset_type_name'].toString();
  }
  if (json['address'] != null) {
    data.address = json['address'].toString();
  }
  return data;
}

Map<String, dynamic> assetItemsToJson(AssetItems entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['id'] = entity.id;
  data['name'] = entity.name;
  data['barcode'] = entity.barcode;
  data['asset_type_name'] = entity.assetTypeName;
  data['address'] = entity.address;
  return data;
}
