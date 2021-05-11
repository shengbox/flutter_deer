import 'package:flutter/material.dart';
import 'package:flutter_deer/goods/models/asset_options_entity.dart';

class GoodsPageProvider extends ChangeNotifier {
  List<String> _typeList = [
    '全部资产',
  ];

  AssetOptionsEntity? _option;

  /// Tab的下标
  int _index = 0;

  int get index => _index;

  /// 商品数量
  final List<int> _goodsCountList = [0, 0, 0];

  List<int> get goodsCountList => _goodsCountList;

  /// 选中商品分类下标
  int _sortIndex = 0;

  int get sortIndex => _sortIndex;

  List<String> get typeList => _typeList;

  void setSortIndex(int sortIndex) {
    _sortIndex = sortIndex;
    notifyListeners();
  }

  void setIndex(int index) {
    _index = index;
    notifyListeners();
  }

  void setGoodsCount(int count) {
    _goodsCountList[index] = count;
    notifyListeners();
  }

  void setAssetOptions(AssetOptionsEntity? options) {
    if (options!.assetTypeTree != null) {
      _typeList.clear();
      _typeList.add('全部资产');
      _typeList.addAll(options.assetTypeTree!.map((e) => e.title!).toList());
      _option = options;
      notifyListeners();
    }
  }
}
