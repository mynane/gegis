import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:gegis/components/item.dart';
// import 'package:gegis/models/user_model.dart';
// import 'package:gegis/components/list.dart';
import 'package:gegis/components/dialog.dart';

class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() => new ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> with TickerProviderStateMixin {
  List<dynamic> _data = [];
  bool isLoading = false;
  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    super.initState();
    get();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        print("loadMore");
        loadData();
        // _getMoreData();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  HttpClient client = new HttpClient();
  Future<Null> get() async {
    String url = 'https://xiaoce-timeline-api-ms.juejin.im/v1/getListByLastTime?uid=&client_id=&token=&src=web&pageNum=1';
    Map<String, dynamic> result;
    setState(() {
      isLoading = true;
    });
    try {
      var request = await client.getUrl(Uri.parse(url));
      request.headers.contentType =  new ContentType("application", "json", charset: "utf-8");
      var response = await request.close();
      var json = await response.transform(UTF8.decoder).join();
      result = JSON.decode(json);
    } catch(e) {
      result = new Map();
      result["d"] = [];
      print(e);
    }

    setState(() {
      _data = result['d'];
      isLoading = false;
    });
  }
  Future<Null> loadData() async{
    await get();
    if (!mounted) return;
    setState(() {
    });
  }

  Widget _getLoad() {
    return new AlertDialog(
      content: new Text('数据加载中...'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new RefreshIndicator(
      child: isLoading ? _getLoad() : ListView.builder(
        controller: _scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) => new ItemComponent(_data[index]),
      ),
      onRefresh: loadData,
    );
  }
}
