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
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 20),
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.infiniteDetail!.symbol!, style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  Row(
                    children: [
                      Container(
                        child: Badge(
                          toAnimate: false,
                          shape: BadgeShape.square,
                          badgeColor: (widget.infiniteDetail!.infiniteState! == "진행중" ? Colors.blue[700]! :
                            widget.infiniteDetail!.infiniteState! == "매도완료" ? Colors.green[500]! :
                            widget.infiniteDetail!.infiniteState! == "매도중지" ? Colors.orange : Colors.red
                          ),
                          padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                          borderRadius: BorderRadius.circular(8),
                          badgeContent: Text(widget.infiniteDetail!.infiniteState!, style: TextStyle(fontSize: 12, color: Colors.white)),
                        )
                      )
                    ]
                  ),
                  
                  
                ],
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(0, 10, 0, 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("진행률", style: TextStyle()),
                  Text("0.0%", style: TextStyle())
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(bottom: 5),
                    child: Text("기본정보", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text("시작일자", style: TextStyle(color: Colors.black54))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평단가", style: TextStyle(color: Colors.black54))
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(widget.infiniteDetail!.startedDate!, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("\$" + widget.infiniteDetail!.averagePrice!.toString(), style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600))
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(bottom: 5),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text("시작일자", style: TextStyle(color: Colors.black54))
                        ),
                        Expanded(
                          flex: 5,
                          child: Text("평단가", style: TextStyle(color: Colors.black54))
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

      )
    );
  }
}