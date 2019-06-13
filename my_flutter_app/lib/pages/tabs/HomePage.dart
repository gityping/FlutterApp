import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../api/CustomApi.dart';
class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            height: 200.0,
            child: Swiper(
              itemBuilder: _swiperBuilder,
              itemCount: 3,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.blue
                )
              ),
              // control: new SwiperControl(),
              scrollDirection: Axis.horizontal,
              autoplay: true,
              onTap: (index) {
                print("object");
              },
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                MyIcons(Icons.home, size: 32.0, color: Colors.yellow,),
                MyIcons(Icons.search, size: 32.0, color: Colors.yellow,),
                MyIcons(Icons.games, size: 32.0, color: Colors.yellow,),
                MyIcons(Icons.nature, size: 32.0, color: Colors.yellow,),
              ],
            ),
          )
        ],
      )
    );
  }
}
Widget _swiperBuilder(BuildContext context, int index) {
  print(index);
  return (Image.network(
    swiper_data[index],
    fit: BoxFit.fill,
  ));
}
class  MyIcons extends StatelessWidget {
  IconData icons;
  double size=32.0;
  Color color;
  MyIcons(this.icons,{this.size, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      color: this.color,
      child: Center(
        child: Icon(
          this.icons,
          size: this.size,
          color: Colors.white,
        ),
      ),
    );
  }
}