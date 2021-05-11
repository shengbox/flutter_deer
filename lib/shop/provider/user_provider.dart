import 'package:flutter/material.dart';
import 'package:flutter_deer/shop/models/account_entity.dart';

class UserProvider extends ChangeNotifier {

  AccountEntity? _user;
  AccountEntity? get user => _user;
  
  void setUser(AccountEntity? user) {
    _user = user;
    notifyListeners();
  }
}