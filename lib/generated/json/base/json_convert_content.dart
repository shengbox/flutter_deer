// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter_deer/order/models/asset_entity.dart';
import 'package:flutter_deer/generated/json/asset_entity_helper.dart';
import 'package:flutter_deer/goods/models/goods_sort_entity.dart';
import 'package:flutter_deer/generated/json/goods_sort_entity_helper.dart';
import 'package:flutter_deer/account/models/city_entity.dart';
import 'package:flutter_deer/generated/json/city_entity_helper.dart';
import 'package:flutter_deer/order/models/search_entity.dart';
import 'package:flutter_deer/generated/json/search_entity_helper.dart';
import 'package:flutter_deer/account/models/bank_entity.dart';
import 'package:flutter_deer/generated/json/bank_entity_helper.dart';
import 'package:flutter_deer/shop/models/user_entity.dart';
import 'package:flutter_deer/generated/json/user_entity_helper.dart';
import 'package:flutter_deer/shop/models/login_entity.dart';
import 'package:flutter_deer/generated/json/login_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {
			case AssetEntity:
				return assetEntityFromJson(data as AssetEntity, json) as T;
			case AssetItems:
				return assetItemsFromJson(data as AssetItems, json) as T;
			case GoodsSortEntity:
				return goodsSortEntityFromJson(data as GoodsSortEntity, json) as T;
			case CityEntity:
				return cityEntityFromJson(data as CityEntity, json) as T;
			case SearchEntity:
				return searchEntityFromJson(data as SearchEntity, json) as T;
			case SearchItems:
				return searchItemsFromJson(data as SearchItems, json) as T;
			case SearchItemsOwner:
				return searchItemsOwnerFromJson(data as SearchItemsOwner, json) as T;
			case SearchItemsLicense:
				return searchItemsLicenseFromJson(data as SearchItemsLicense, json) as T;
			case BankEntity:
				return bankEntityFromJson(data as BankEntity, json) as T;
			case UserEntity:
				return userEntityFromJson(data as UserEntity, json) as T;
			case LoginEntity:
				return loginEntityFromJson(data as LoginEntity, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {
			case AssetEntity:
				return assetEntityToJson(data as AssetEntity);
			case AssetItems:
				return assetItemsToJson(data as AssetItems);
			case GoodsSortEntity:
				return goodsSortEntityToJson(data as GoodsSortEntity);
			case CityEntity:
				return cityEntityToJson(data as CityEntity);
			case SearchEntity:
				return searchEntityToJson(data as SearchEntity);
			case SearchItems:
				return searchItemsToJson(data as SearchItems);
			case SearchItemsOwner:
				return searchItemsOwnerToJson(data as SearchItemsOwner);
			case SearchItemsLicense:
				return searchItemsLicenseToJson(data as SearchItemsLicense);
			case BankEntity:
				return bankEntityToJson(data as BankEntity);
			case UserEntity:
				return userEntityToJson(data as UserEntity);
			case LoginEntity:
				return loginEntityToJson(data as LoginEntity);
			}
			return data as T;
		}
  //Go back to a single instance by type
	static _fromJsonSingle<M>( json) {
		String type = M.toString();
		if(type == (AssetEntity).toString()){
			return AssetEntity().fromJson(json);
		}	else if(type == (AssetItems).toString()){
			return AssetItems().fromJson(json);
		}	else if(type == (GoodsSortEntity).toString()){
			return GoodsSortEntity().fromJson(json);
		}	else if(type == (CityEntity).toString()){
			return CityEntity().fromJson(json);
		}	else if(type == (SearchEntity).toString()){
			return SearchEntity().fromJson(json);
		}	else if(type == (SearchItems).toString()){
			return SearchItems().fromJson(json);
		}	else if(type == (SearchItemsOwner).toString()){
			return SearchItemsOwner().fromJson(json);
		}	else if(type == (SearchItemsLicense).toString()){
			return SearchItemsLicense().fromJson(json);
		}	else if(type == (BankEntity).toString()){
			return BankEntity().fromJson(json);
		}	else if(type == (UserEntity).toString()){
			return UserEntity().fromJson(json);
		}	else if(type == (LoginEntity).toString()){
			return LoginEntity().fromJson(json);
		}	
		return null;
	}

  //list is returned by type
	static M _getListChildType<M>(List data) {
		if(<AssetEntity>[] is M){
			return data.map<AssetEntity>((e) => AssetEntity().fromJson(e)).toList() as M;
		}	else if(<AssetItems>[] is M){
			return data.map<AssetItems>((e) => AssetItems().fromJson(e)).toList() as M;
		}	else if(<GoodsSortEntity>[] is M){
			return data.map<GoodsSortEntity>((e) => GoodsSortEntity().fromJson(e)).toList() as M;
		}	else if(<CityEntity>[] is M){
			return data.map<CityEntity>((e) => CityEntity().fromJson(e)).toList() as M;
		}	else if(<SearchEntity>[] is M){
			return data.map<SearchEntity>((e) => SearchEntity().fromJson(e)).toList() as M;
		}	else if(<SearchItems>[] is M){
			return data.map<SearchItems>((e) => SearchItems().fromJson(e)).toList() as M;
		}	else if(<SearchItemsOwner>[] is M){
			return data.map<SearchItemsOwner>((e) => SearchItemsOwner().fromJson(e)).toList() as M;
		}	else if(<SearchItemsLicense>[] is M){
			return data.map<SearchItemsLicense>((e) => SearchItemsLicense().fromJson(e)).toList() as M;
		}	else if(<BankEntity>[] is M){
			return data.map<BankEntity>((e) => BankEntity().fromJson(e)).toList() as M;
		}	else if(<UserEntity>[] is M){
			return data.map<UserEntity>((e) => UserEntity().fromJson(e)).toList() as M;
		}	else if(<LoginEntity>[] is M){
			return data.map<LoginEntity>((e) => LoginEntity().fromJson(e)).toList() as M;
		}
		throw Exception("not fond");
	}

  static M fromJsonAsT<M>(json) {
    if (json is List) {
      return _getListChildType<M>(json);
    } else {
      return _fromJsonSingle<M>(json) as M;
    }
  }
}