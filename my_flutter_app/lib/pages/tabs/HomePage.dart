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
          SizedBox(height: 30.0),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                CustomIcon(Icons.home, size: 32.0, color: Colors.yellow,),
                CustomIcon(Icons.search, size: 32.0, color: Colors.blue,),
                CustomIcon(Icons.games, size: 32.0, color: Colors.pink,),
                CustomIcon(Icons.search, size: 32.0, color: Colors.purple,),
              ],
            ),
          )
        ],
      )
    );
  }
}
Widget _swiperBuilder(BuildContext context, int index) {
  // print(index);
  return (Image.network(
    swiper_data[index],
    fit: BoxFit.fill,
  ));
}
class CustomIcon extends StatelessWidget {
  IconData icons;
  double size=32.0;
  Color color;
  CustomIcon(this.icons,{this.size, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60.0,
      height: 60.0,
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