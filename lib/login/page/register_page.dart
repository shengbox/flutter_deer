import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_deer/login/widgets/my_text_field.dart';
import 'package:flutter_deer/net/dio_utils.dart';
import 'package:flutter_deer/net/http_api.dart';
import 'package:flutter_deer/res/resources.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';
import 'package:flutter_deer/store/store_router.dart';
import 'package:flutter_deer/util/change_notifier_manage.dart';
import 'package:flutter_deer/util/log_utils.dart';
import 'package:flutter_deer/util/other_utils.dart';
import 'package:flutter_deer/util/toast_utils.dart';
import 'package:flutter_deer/widgets/my_app_bar.dart';
import 'package:flutter_deer/widgets/my_button.dart';
import 'package:flutter_deer/widgets/my_scroll_view.dart';
import 'package:flutter_gen/gen_l10n/deer_localizations.dart';

/// design/1注册登录/index.html#artboard11
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage>
    with ChangeNotifierMixin<RegisterPage> {
  //定义一个controller
  final TextEditingController _companyController = TextEditingController();
  final TextEditingController _contactsController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _vCodeController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _nodeText1 = FocusNode();
  final FocusNode _nodeText2 = FocusNode();
  final FocusNode _nodeText3 = FocusNode();

  final FocusNode _nodeText4 = FocusNode();
  final FocusNode _nodeText5 = FocusNode();

  bool _clickable = false;

  @override
  Map<ChangeNotifier, List<VoidCallback>?>? changeNotifier() {
    final List<VoidCallback> callbacks = <VoidCallback>[_verify];
    return <ChangeNotifier, List<VoidCallback>?>{
      _nameController: callbacks,
      _vCodeController: callbacks,
      _passwordController: callbacks,
      _nodeText1: null,
      _nodeText2: null,
      _nodeText3: null,
    };
  }

  void _verify() {
    final String name = _nameController.text;
    final String vCode = _vCodeController.text;
    final String password = _passwordController.text;
    bool clickable = true;
    if (name.isEmpty || name.length < 11) {
      clickable = false;
    }
    if (vCode.isEmpty || vCode.length < 6) {
      clickable = false;
    }
    if (password.isEmpty || password.length < 6) {
      clickable = false;
    }
    if (clickable != _clickable) {
      setState(() {
        _clickable = clickable;
      });
    }
  }

  void _register() {
    DioUtils.instance.asyncRequestNetwork<String>(Method.post, HttpApi.signUp,
        params: <String, dynamic>{
          'username': _nameController.text,
          'code': _vCodeController.text,
          'password': _passwordController.text
        }, onSuccess: (data) {
      Toast.show('点击注册');
      NavigatorUtils.push(context, StoreRouter.auditResultPage);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: DeerLocalizations.of(context)!.register,
      ),
      body: MyScrollView(
        keyboardConfig: Utils.getKeyboardActionsConfig(
            context, <FocusNode>[_nodeText1, _nodeText2, _nodeText3]),
        crossAxisAlignment: CrossAxisAlignment.center,
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20.0),
        children: _buildBody(),
      ),
    );
  }

  List<Widget> _buildBody() {
    return <Widget>[
      Text(
        DeerLocalizations.of(context)!.openYourAccount,
        style: TextStyles.textBold26,
      ),
      Gaps.vGap16,
      MyTextField(
        key: const Key('company'),
        focusNode: _nodeText4,
        controller: _companyController,
        maxLength: 20,
        keyboardType: TextInputType.text,
        hintText: '企业名称',
      ),
      Gaps.vGap16,
      MyTextField(
        key: const Key('contacts'),
        focusNode: _nodeText5,
        controller: _contactsController,
        maxLength: 11,
        keyboardType: TextInputType.text,
        hintText: '联系人',
      ),
      Gaps.vGap16,
      MyTextField(
        key: const Key('phone'),
        focusNode: _nodeText1,
        controller: _nameController,
        maxLength: 11,
        keyboardType: TextInputType.phone,
        hintText: DeerLocalizations.of(context)!.inputPhoneHint,
      ),
      Gaps.vGap8,
      MyTextField(
        key: const Key('vcode'),
        focusNode: _nodeText2,
        controller: _vCodeController,
        keyboardType: TextInputType.number,
        getVCode: () async {
          if (_nameController.text.length == 11) {
            DioUtils.instance.asyncRequestNetwork(
                Method.get, HttpApi.registerSms,
                queryParameters: <String, dynamic>{
                  'phone': _nameController.text,
                }, onSuccess: (data) {
              Log.d(data.toString());
              Toast.show(DeerLocalizations.of(context)!.verificationButton);
            });

            /// 一般可以在这里发送真正的请求，请求成功返回true
            return true;
          } else {
            Toast.show(DeerLocalizations.of(context)!.inputPhoneInvalid);
            return false;
          }
        },
        maxLength: 6,
        hintText: DeerLocalizations.of(context)!.inputVerificationCodeHint,
      ),
      Gaps.vGap8,
      MyTextField(
        key: const Key('password'),
        keyName: 'password',
        focusNode: _nodeText3,
        isInputPwd: true,
        controller: _passwordController,
        keyboardType: TextInputType.visiblePassword,
        maxLength: 16,
        hintText: DeerLocalizations.of(context)!.inputPasswordHint,
      ),
      Gaps.vGap24,
      MyButton(
        key: const Key('register'),
        onPressed: _clickable ? _register : null,
        text: DeerLocalizations.of(context)!.register,
      )
    ];
  }
}
