import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:dio/dio.dart';


class NewsPage extends StatefulWidget {
  NewsPage({Key? key}) : super(key: key);
  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // 当前页数
  int  _page = 1;
  // 页面数据
  List _list = [];
  // 是否还有
  bool _hasMore = true;
  // 滚动控制器
  ScrollController _scrollController = new ScrollController();
  @override
  void initState() {
    super.initState();
    this._getData();
    // 监听滚动事件
    _scrollController.addListener((){
      // 获取滚动条下拉的距离
      // print(_scrollController.position.pixels);
      // 获取整个页面的高度
      // print(_scrollController.position.maxScrollExtent);
      if(_scrollController.position.pixels>_scrollController.position.maxScrollExtent-40){
        this._getData();
      }
    });
  }

  // 获取数据列表
  void _getData() async{
    if(this._hasMore){

      var url = "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=${_page}";
      Response result = await Dio().get(url);
      var list = json.decode(result.data)["result"];

      setState(() {
        // 拼接数据
        this._list.addAll(list);
        // 页数累加
        this._page++;
      });

      if(list.length<20){
        setState(() {
          // 关闭加载
          this._hasMore = false;
        });
      }
    }
  }

  // 下拉刷新
  Future<void> _onRefresh() async{
    print("下拉刷新");
    // 持续两秒
    await Future.delayed(Duration(milliseconds:2000),(){
      this._getData();
    });
  }


  // 加载动画
  Widget _getMoreWidget() {

    // 如果还有数据
    if(this._hasMore){
      return Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                '加载中',
                style: TextStyle(fontSize: 16.0),
              ),
              // 加载图标
              CircularProgressIndicator(
                strokeWidth: 1.0,
              )
            ],
          ),
        ),
      );
    }else{
      return Center(
        child: Text("...我是有底线的..."),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child:Scaffold(
            appBar: AppBar(
                title:Text("新闻列表")
            ),
            body:this._list.length==0?this._getMoreWidget():RefreshIndicator(
                child: ListView.builder(
                  // 上拉加载控制器
                  controller: _scrollController,
                  itemCount: this._list.length,
                  itemBuilder: (context,index){

                    Widget tip = Text("");
                    // 当渲染到最后一条数据时，加载动画提示
                    if(index == this._list.length-1){
                      tip = _getMoreWidget();
                    }
                    return Column(
                      children: <Widget>[
                        ListTile(
                            title:Text(
                              "${this._list[index]["title"]}",
                              maxLines:1,
                            )
                        ),
                        Divider(),
                        // 加载提示
                        tip
                      ],
                    );
                  },
                ),
                // 下拉刷新事件
                onRefresh:this._onRefresh
            )
        )
    );
  }
}