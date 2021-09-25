import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 4,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black87,
          ),
          onPressed: () {
            showDialog(context: context, builder:(BuildContext context){
              return AlertDialog(title: Text("Working on It..."),content: Text("Hello Please Cooldown bro.."),);
            } ,barrierDismissible: false,);
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(25))),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Find your",
                    style: TextStyle(fontSize: 20, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Inspirations",
                    style: TextStyle(fontSize: 25, color: Colors.black87),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(

                    decoration: BoxDecoration(
                        color: Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black87,
                          ),
                          hintText: "What you're looking for ?",
                          hintStyle: TextStyle(fontSize: 14)),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 28,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Promo Today",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [

                        promoCard('https://images.unsplash.com/photo-1544526226-d4568090ffb8?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aGQlMjBpbWFnZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
                        promoCard('https://lh3.googleusercontent.com/proxy/YiSE6g2_JFiKjiIA_tYAD-pk2L_mgra4tSoxJiI04huvXp4lAyOwmxAkYSz7UUn-GgOuUZTeCgFXatumQO51BMk_5FiZ0utwY7zD83lTGGe1cg4kPkfMlNEo7Y8Z8MZbqeyOtr62Zwa_hA'),
                        promoCard('https://im0-tub-ru.yandex.net/i?id=e67c20f98bdc512c5d3bc20c140f8fac&n=27&h=480&w=480'),
                        promoCard('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlrZqTCInyg6RfYC7Ape20o-EWP1EN_A8fOA&usqp=CAU'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 100,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(20),image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage('https://images.ctfassets.net/hrltx12pl8hq/7yQR5uJhwEkRfjwMFJ7bUK/dc52a0913e8ff8b5c276177890eb0129/offset_comp_772626-opt.jpg?fit=fill&w=800&h=300')

                    )),

                    

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(

    aspectRatio: 2.6 / 3,
    child: Container(
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),

      ),
      child: Container(decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.9],


              colors: [
                Colors.black87.withOpacity(.8),
                Colors.black87.withOpacity(.2)
              ]
          )
      ),),
    ),
  );
}
