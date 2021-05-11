import 'package:flutter_deer/goods/models/asset_options_entity.dart';
import 'package:flutter_deer/mvp/mvps.dart';

abstract class GoodIMvpView implements IMvpView {
  void setAssetOptions(AssetOptionsEntity? options);

// bool get isAccessibilityTest;
}
