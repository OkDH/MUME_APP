import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:mume/model/dto/mume/infinite_detail.dart';

class InfiniteDetailPage extends StatefulWidget {

  final InfiniteDetail? infiniteDetail;

  InfiniteDetailPage({this.infiniteDetail});

  _InfiniteDetailState createState() => _InfiniteDetailState();
}

class _InfiniteDetailState extends State<InfiniteDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {
            },
          ),
          IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
              },
          )
        ],
      ),
      body: Container(
        //alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.infiniteDetail!.symbol!, style: TextStyle(fontSize: 20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("진행중"),
                      Text("계좌"),
                      Text("v.2.1"),
                      Badge(
                        toAnimate: false,
                        shape: BadgeShape.square,
                        badgeColor: Colors.lightBlue,
                        padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                        borderRadius: BorderRadius.circular(20),
                        badgeContent: Text('작업중', style: TextStyle(color: Colors.white)),
                      )
                    ]
                  ),
                ],
              ),
            )
          ],
        ),

      )
    );
  }
}