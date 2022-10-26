import 'package:flutter/material.dart';
import 'package:game_quizz/Screens/start_login/Start_Screens.dart';

class Item{
  final String? img;
  final IconData?icon ;
  final String ?title;
  Item({required this.img,required this.icon,required this.title});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

List<Item> listItem=[
 Item(img: "assets/khoahoc.jpg", icon: Icons.science_outlined, title: "Khoa Học"),
  Item(img: "assets/lichsu.jpg", icon: Icons.history_rounded, title: "Lịch Sử"),
  Item(img: "assets/dialy.png", icon: Icons.sunny_snowing, title: "Địa Lí"),
  Item(img: "assets/tunhien.png", icon: Icons.nature_outlined, title: "Tự Nhiên"),
  Item(img: "assets/vanhoa.png", icon: Icons.other_houses_rounded, title: "Văn Hoá"),
  Item(img: "assets/thethao.jpg", icon: Icons.sports_soccer_outlined, title: "Thể Thao")
];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.list_outlined),
          title: const Text('Home Page'),
          elevation: 4.0,
          actions: const <Widget>[
            Center(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            )),
            
          ],
        ),
        body: cardItem(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget cardItem(int i) {
      
          return GridView.builder(
            gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount:listItem.length ,
      itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){print("$index");},
              child: Card(
                
                  clipBehavior: Clip.antiAlias,
                  elevation: 2.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Image.asset(listItem[index].img!)),
                        Icon(listItem[index].icon),
                        Text(listItem[index].title!),
                      ],
                    ),
                  )),
            );
        });
        
      
    }
}
