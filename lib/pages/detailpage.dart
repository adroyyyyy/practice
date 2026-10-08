import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 60,),
          // 1st row
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    height: size.height/4,
                    width: size.width,
                    child: Image.network("https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    fit: BoxFit.cover,),
                  ),
                  Container(
                    height: size.height/4,
                    width: size.width,
                    color: Colors.black26,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.arrow_back,
                    size: 50,
                    color: Colors.white,),
                  ),
                  Positioned(
                    right: 5,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(Icons.share,
                        size: 45,
                        color: Colors.white,),
                    ),
                  ),
                  Container(
                    height: size.height/4,
                    width: size.width,
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Icon(Icons.play_circle_fill_rounded,
                          size: 50,
                          color: Colors.white,),
                      ),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
