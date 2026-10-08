import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:practice/pages/detailpage.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  horizontalListCard(size, String title, url, date) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (context) => DetailPage(),
          )
        );
      },
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            height: size.height/4.5,
            width: size.width/1.2,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(url,
                fit: BoxFit.cover,),
            ),
          ),
          Container(
            margin: EdgeInsets.all(15),
            height: size.height/4.5,
            width: size.width/1.2,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(20),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(url,
                fit: BoxFit.cover,),
            ),
          ),
          Positioned(
            bottom: 45,
            left: 30,
            child: Container(
              width: size.width/2,
              child: Text(title,
                style: TextStyle(color: Colors.white, fontSize: 16),
                maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 30,
            child: Container(
              width: size.width/2,
              child: Text(date,
                style: TextStyle(color: Colors.white, fontSize: 16),
                maxLines: 2, overflow: TextOverflow.ellipsis,),
            ),
          ),
          Positioned(
            bottom: 25,
            right: 30,
            child: Icon(Icons.play_circle_fill,
              color: Colors.white,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
  verticalListCard(size, url, String title, date, source){
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(left: 15, right: 12, top: 5),
          height: 90,
          width: 90,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(url,
              fit: BoxFit.cover,),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width/1.6,
              child: Text(title,
                textAlign: TextAlign.center,),
            ),
            Container(
              width: size.width/1.6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    padding: EdgeInsets.all(3),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8, bottom: 8),
                      child: Text(source, style: TextStyle(color: Colors.white),),
                    ),
                  ),
                  Text(date),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          // horizontal list
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                horizontalListCard(size,
                    "Hello PCPS news",
                    "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "02 FEB 2026"
                    ),
                horizontalListCard(size,
                    "Hello PCPS news",
                    "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "04 FEB 2026"),
                horizontalListCard(size,
                    "Happy Dashain PCPS",
                    "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "04 FEB 2026"),
                horizontalListCard(size,
                    "Hello PCPS news",
                    "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                    "02 FEB 2026"),
              ],
            ),
          ),
          // vertical list
          Container(
            height: size.height/1.7,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                  verticalListCard(size,
                      "https://images.unsplash.com/photo-1509023464722-18d996393ca8?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                      "Hello PCPS new channel Happy Dashain",
                      "02 FEB 2026",
                      "BBC news"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}