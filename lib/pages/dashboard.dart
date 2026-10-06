import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: size.height/4.3,
                      width: size.width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://plus.unsplash.com/premium_photo-1708287034839-2fcc5298cab7?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                        fit: BoxFit.cover,),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 30,
                      child: Container(
                        width: size.width/2,
                        child: Text("Hello PCPS news channel Happy dashain Hello PCPS news channel Happy dashain",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                        maxLines: 2, overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                        left: 30,
                      child: Text("02 Feb 2026",
                      style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 30,
                      child: Icon(Icons.play_circle_fill,
                      color: Colors.white,
                      size: 40,),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: size.height/4.3,
                      width: size.width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://plus.unsplash.com/premium_photo-1708287034839-2fcc5298cab7?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: BoxFit.cover,),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 30,
                      child: Container(
                        width: size.width/2,
                        child: Text("Hello PCPS news channel Happy dashain Hello PCPS news channel Happy dashain",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                          maxLines: 2, overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 30,
                      child: Text("02 Feb 2026",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 30,
                      child: Icon(Icons.play_circle_fill,
                        color: Colors.white,
                        size: 40,),
                    )
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: size.height/4.3,
                      width: size.width/1.2,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network("https://plus.unsplash.com/premium_photo-1708287034839-2fcc5298cab7?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                          fit: BoxFit.cover,),
                      ),
                    ),
                    Positioned(
                      bottom: 45,
                      left: 30,
                      child: Container(
                        width: size.width/2,
                        child: Text("Hello PCPS news channel Happy dashain Hello PCPS news channel Happy dashain",
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                          maxLines: 2, overflow: TextOverflow.ellipsis,),
                      ),
                    ),
                    Positioned(
                      bottom: 15,
                      left: 30,
                      child: Text("02 Feb 2026",
                        style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),),
                    ),
                    Positioned(
                      bottom: 15,
                      right: 30,
                      child: Icon(Icons.play_circle_fill,
                        color: Colors.white,
                        size: 40,),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}