import 'package:flutter_deer/mvp/mvps.dart';
import 'package:flutter_deer/shop/models/account_entity.dart';
import 'package:flutter_deer/shop/models/user_entity.dart';

abstract class ShopIMvpView implements IMvpView {

  void setUser(AccountEntity? user);
  
  bool get isAccessibilityTest;
}
