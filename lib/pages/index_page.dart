import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttershop/pages/cart_page.dart';
import 'package:fluttershop/pages/category_page.dart';
import 'package:fluttershop/pages/home_page.dart';
import 'package:fluttershop/pages/member_page.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  List<BottomNavigationBarItem> bottomNavigationBarList = [
    BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), title: Text("首页")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.search), title: Text("分类")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.shopping_cart), title: Text("购物车")),
    BottomNavigationBarItem(
        icon: Icon(CupertinoIcons.profile_circled), title: Text("会员中心"))
  ];

  var pages = [HomePage(), CategoryPage(), CartPage(), MemberPage()];
  var currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        appBar: AppBar(
          title: Text("飞商城"),
        ),
        body: pages[currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: currentPageIndex,
            items: bottomNavigationBarList,
            onTap: (index) {
              setState(() {
                currentPageIndex = index;
              });
            }));
  }
}
