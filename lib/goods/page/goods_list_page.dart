import 'package:common_utils/common_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deer/goods/models/goods_item_entity.dart';
import 'package:flutter_deer/goods/provider/goods_page_provider.dart';
import 'package:flutter_deer/net/dio_utils.dart';
import 'package:flutter_deer/net/http_api.dart';
import 'package:flutter_deer/order/models/asset_entity.dart';
import 'package:flutter_deer/routers/fluro_navigator.dart';
import 'package:flutter_deer/util/log_utils.dart';
import 'package:flutter_deer/util/toast_utils.dart';
import 'package:flutter_deer/widgets/my_refresh_list.dart';
import 'package:flutter_deer/widgets/state_layout.dart';
import 'package:provider/provider.dart';

import '../goods_router.dart';
import '../widgets/goods_delete_bottom_sheet.dart';
import '../widgets/goods_item.dart';

class GoodsListPage extends StatefulWidget {
  const GoodsListPage({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  _GoodsListPageState createState() => _GoodsListPageState();
}

class _GoodsListPageState extends State<GoodsListPage>
    with
        AutomaticKeepAliveClientMixin<GoodsListPage>,
        SingleTickerProviderStateMixin {
  int _selectIndex = -1;
  late Animation<double> _animation;
  late AnimationController _controller;

  // List<GoodsItemEntity> _list = [];
  List<AssetItems> _list = [];
  AnimationStatus _animationStatus = AnimationStatus.dismissed;

  @override
  void initState() {
    super.initState();
    // 初始化动画控制
    _controller = AnimationController(
        duration: const Duration(milliseconds: 450), vsync: this);
    // 动画曲线
    final _curvedAnimation =
        CurvedAnimation(parent: _controller, curve: Curves.easeOutSine);
    _animation = Tween(begin: 0.0, end: 1.1).animate(_curvedAnimation)
      ..addStatusListener((status) {
        _animationStatus = status;
      });

    //Item数量
    _maxPage = widget.index == 0 ? 1 : (widget.index == 1 ? 2 : 3);

    _onRefresh();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future _onRefresh() async {
    await DioUtils.instance.requestNetwork<AssetEntity>(
        Method.get, HttpApi.asset, queryParameters: <String, dynamic>{
      'name': widget.index == 0 ? '在用' : '闲置'
    }, onSuccess: (data) {
      final List<GoodsItemEntity> list = [];
      data?.items!.forEach((element) {
        if (element.image!.startsWith('//')) {
          element.image = 'https:${element.image}';
        }
        list.add(GoodsItemEntity(
            icon: element.image!,
            title: element.specs! + element.name!,
            type: element.id! % 3));
      });
      setState(() {
        _page = 1;
        _list = data!.items!;
      });
      _setGoodsCount(_list.length);
    });

    // await Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     _page = 1;
    //     _list = List.generate(
    //         widget.index == 0 ? 3 : 10,
    //         (i) => GoodsItemEntity(
    //             icon: _imgList[i % 6], title: '八月十五中秋月饼礼盒', type: i % 3));
    //   });
    //   _setGoodsCount(_list.length);
    // });
  }

  Future _loadMore() async {
    // await Future.delayed(const Duration(seconds: 2), () {
    //   setState(() {
    //     _list.addAll(List.generate(
    //         10,
    //         (i) => GoodsItemEntity(
    //             icon: _imgList[i % 6], title: '八月十五中秋月饼礼盒', type: i % 3)));
    //     _page++;
    //   });
    //   _setGoodsCount(_list.length);
    // });
  }

  void _setGoodsCount(int count) {
//    Provider.of<GoodsPageProvider>(context, listen: false).setGoodsCount(count);
    /// 与上方等价，provider 4.1.0添加的拓展方法
    context.read<GoodsPageProvider>().setGoodsCount(count);
  }

  int _page = 1;
  late int _maxPage;
  StateType _stateType = StateType.loading;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DeerListView(
        itemCount: _list.length,
        stateType: _stateType,
        onRefresh: _onRefresh,
        loadMore: _loadMore,
        hasMore: _page < _maxPage,
        itemBuilder: (_, index) {
          final String heroTag = 'goodsImg${widget.index}-$index';
          return GoodsItem(
            index: index,
            heroTag: heroTag,
            selectIndex: _selectIndex,
            item: _list[index],
            animation: _animation,
            onTapMenu: () {
              /// 点击其他item时，重置状态
              if (_selectIndex != index) {
                _animationStatus = AnimationStatus.dismissed;
              }

              /// 避免动画中重复执行
              if (_animationStatus == AnimationStatus.dismissed) {
                // 开始执行动画
                _controller.forward(from: 0.0);
              }
              setState(() {
                _selectIndex = index;
              });
            },
            onTapMenuClose: () {
              if (_animationStatus == AnimationStatus.completed) {
                _controller.reverse(from: 1.1);
              }
              _selectIndex = -1;
            },
            onTapEdit: () {
              setState(() {
                _selectIndex = -1;
              });
              // final String url = EncryptUtil.encodeBase64(_list[index].icon);
              final String url = EncryptUtil.encodeBase64(_list[index].image!);
              NavigatorUtils.push(context,
                  '${GoodsRouter.goodsEditPage}?isAdd=false&url=$url&heroTag=$heroTag');
            },
            onTapOperation: () {
              Toast.show('下架');
            },
            onTapDelete: () {
              _controller.reverse(from: 1.1);
              _selectIndex = -1;
              _showDeleteBottomSheet(index);
            },
          );
        });
  }

  @override
  bool get wantKeepAlive => true;

  void _showDeleteBottomSheet(int index) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return GoodsDeleteBottomSheet(
          onTapDelete: () {
            setState(() {
              _list.removeAt(index);
              if (_list.isEmpty) {
                _stateType = StateType.goods;
              }
            });
            _setGoodsCount(_list.length);
          },
        );
      },
    );
  }
}
