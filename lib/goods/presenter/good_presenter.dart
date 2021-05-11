import 'package:flutter/material.dart';
import 'package:flutter_deer/goods/iview/good_iview.dart';
import 'package:flutter_deer/goods/models/asset_options_entity.dart';
import 'package:flutter_deer/mvp/base_page_presenter.dart';
import 'package:flutter_deer/net/net.dart';

class GoodPagePresenter extends BasePagePresenter<GoodIMvpView> {
  @override
  void initState() {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      /// 接口请求例子
      /// get请求参数queryParameters  post请求参数params
      asyncRequestNetwork<AssetOptionsEntity>(
        Method.get,
        url: HttpApi.assetOptions,
        queryParameters: <String, dynamic>{
          'contains':
              'dept_tree,areas,employees,accounts,companies,sources,asset_type_tree,specs_tree'
        },
        onSuccess: (data) {
          view.setAssetOptions(data);
        },
      );
    });
  }
}
