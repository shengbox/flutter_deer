import 'package:flutter_deer/generated/json/base/json_convert_content.dart';
import 'package:flutter_deer/generated/json/base/json_field.dart';

class AssetEntity with JsonConvert<AssetEntity> {
  @JSONField(name: 'total')
  int? totalCount;
  @JSONField(name: 'data')
  List<AssetItems>? items;
}

class AssetItems with JsonConvert<AssetItems> {
  int? id;
  String? name;
  @JSONField(name: 'asset_type_name')
  String? assetTypeName;
  String? barcode;
  String? address;
  String? specs;
  String? image;
  String? comment;
}
