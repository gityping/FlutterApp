import 'package:flutter/material.dart';
class CategoryPage extends StatefulWidget {
  CategoryPage({Key key}) : super(key: key);

  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.start,
            children: <Widget>[
              Image.network('http://hbimg.b0.upaiyun.com/b457761d2d39cfbf31202b47f0610faf1a18dfe435e59-NGntI2_fw658'),
              RaisedButton(
                child: Text("宋祖儿"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              RaisedButton(
                child: Text("宋祖儿A"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              RaisedButton(
                child: Text("宋祖儿LLKSS"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              RaisedButton(
                child: Text("宋祖"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://pic1.win4000.com/pic/6/99/416a1298044.jpg'),
              RaisedButton(
                child: Text("迪丽热巴"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://img2.sucai.redocn.com/attachments/images/201302/20130206/Redocn_2013020411373918.jpg'),
              RaisedButton(
                child: Text("MarrryLuck"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://tupian.sucaitianxia.com/images/001/pic163.jpg'),
              RaisedButton(
                child: Text("XXXX"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://pic1.win4000.com/pic/5/44/3b75478437.jpg'),
              RaisedButton(
                child: Text("Adannh"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://pic1.win4000.com/pic/d/c2/8a441612927.jpg'),
              RaisedButton(
                child: Text("Salar"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://tupian.sucaitianxia.com/images/001/pic678.jpg'),
              RaisedButton(
                child: Text("Canvel"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
              Image.network('http://images.china.cn/attachement/jpg/site1000/20150311/d43d7e14ddd1166a3d2316.jpg'),
              RaisedButton(
                child: Text("Diro"),
                textColor: Theme.of(context).accentColor,
                onPressed: () {

                },
              ),
            ],
          ),
        ],
      )
    );
  }
}